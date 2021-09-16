Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6629E40E56A
	for <lists+devicetree@lfdr.de>; Thu, 16 Sep 2021 19:27:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349893AbhIPRLR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Sep 2021 13:11:17 -0400
Received: from mga09.intel.com ([134.134.136.24]:31753 "EHLO mga09.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1348044AbhIPRJM (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 16 Sep 2021 13:09:12 -0400
X-IronPort-AV: E=McAfee;i="6200,9189,10109"; a="222651971"
X-IronPort-AV: E=Sophos;i="5.85,299,1624345200"; 
   d="scan'208";a="222651971"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Sep 2021 10:03:58 -0700
X-IronPort-AV: E=Sophos;i="5.85,299,1624345200"; 
   d="scan'208";a="554167924"
Received: from xuanguan-mobl.amr.corp.intel.com (HELO [10.213.180.84]) ([10.213.180.84])
  by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Sep 2021 10:03:57 -0700
Subject: Re: [PATCH v6 18/22] ASoC: qdsp6: audioreach: add topology support
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     plai@codeaurora.org, tiwai@suse.de, devicetree@vger.kernel.org,
        perex@perex.cz, alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org
References: <20210915131333.19047-1-srinivas.kandagatla@linaro.org>
 <20210915131333.19047-19-srinivas.kandagatla@linaro.org>
 <bc93c17e-b65d-5885-f151-243d259f40ff@linux.intel.com>
 <3c5f75f9-8ee2-6da2-b7ec-7854759e2647@linaro.org>
From:   Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
Message-ID: <9d02f47c-0fe5-b8b9-6b55-17678ac05c22@linux.intel.com>
Date:   Thu, 16 Sep 2021 11:28:05 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <3c5f75f9-8ee2-6da2-b7ec-7854759e2647@linaro.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org




>>> +int audioreach_tplg_init(struct snd_soc_component *component)
>>> +{
>>> +    struct device *dev = component->dev;
>>> +    const struct firmware *fw;
>>> +    int ret;
>>> +
>>> +    ret = request_firmware(&fw, "audioreach.bin", dev);
>>> +    if (ret < 0) {
>>> +        dev_err(dev, "tplg fw audioreach.bin load failed with %d\n",
>>> ret);
>>> +        return ret;
>>> +    }
>>
>> How does this work if you want to change the topology, which will happen
>> rather frequently if you have a framework precisely to change the DSP
>> graph? You need to override a file in userspace?
>>
>> Shouldn't you have a means to identify what topology file you want on a
>> platform-basis?
>>
>> Or at the very least a means to change the file name with a kernel
>> parameter or something.
> 
> I totally agree, I was planning to do that as a next step. But now that
> you pointed it out, I can take a look at SOF for some ideas and add it
> in next version.

Good that we are on the same wavelength.

In initial uses on the Intel side, the kernel could retrieve an
identifier from platform firmware (NHLT tables), and then fetch the
topology.

	snprintf(skl->tplg_name, sizeof(skl->tplg_name), "%x-%.6s-%.8s-%d%s",
		skl->pci_id, nhlt->header.oem_id, nhlt->header.oem_table_id,
		nhlt->header.oem_revision, "-tplg.bin");

As a fallback the topology was named "dfw_sst.bin", similar to your
"audioreach.bin"

This was fine when the distribution controlled a limited number of
builds but was impractical for generic distros which have to figure out
what to add in /lib/firmware/

Later on a more generic topology name was added

snprintf(alt_tplg_name, sizeof(alt_tplg_name), "%s-tplg.bin",
			 skl->mach->drv_name);

That's also problematic if the same machine driver can deal with
multiple platforms, as we do now.

In SOF we took a different route, we added a topology name in the same
tables used to identify a machine driver. Chrome recently added a more
specific match when that approach failed to describe the platform, e.g.
with the same they now use now have specific DMI matches for e.g.
DMI_MATCH(DMI_OEM_STRING, "AUDIO-MAX98373_ALC5682I_I2S_UP4")

It's really hard to find a good solution that provides the means to
describe a specific configuration while still bounding the number of
topology files that need to be maintained. It's a constant battle in SOF
development to try to limit changes or enforce consistency, ironically
the additional flexibility that the topology provides is offset by the
configuration management.

For DeviceTree platforms, you may be in the same case as the initial
Intel approach, it's really easy to have a proliferation of topology
file names, which becomes a nightmare to maintain for generic
distributions.

BTW if you put information in DeviceTree blobs, it'll be interesting to
determine where this information should be: the topology is used by the
DSP driver, but it also contains information related to dailinks, which
are defined in the machine driver. It's one of the issues I have with
the ASoC topology framework: it blurs the layers between DSP and
platform support. We're really missing a 'compatibility layer' between
the hardware description, that should come from platform firmware, and
the DSP topology that can be modified at will. The topology is
essentially too flexible and ignores the hardware definition. 90% of our
recent topology changes are just to swap interfaces and adjust to
hardware changes, it's really painful to maintain, and mistakes are
common with the topology referring to dailinks that don't exist.

Hope this helps!
-Pierre


