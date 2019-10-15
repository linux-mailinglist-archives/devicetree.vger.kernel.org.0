Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 836B8D6D9D
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2019 05:21:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727735AbfJODVT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Oct 2019 23:21:19 -0400
Received: from mga11.intel.com ([192.55.52.93]:25116 "EHLO mga11.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727092AbfJODVT (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 14 Oct 2019 23:21:19 -0400
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 14 Oct 2019 20:21:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,297,1566889200"; 
   d="scan'208";a="395398741"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by fmsmga005.fm.intel.com with ESMTP; 14 Oct 2019 20:21:16 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
        (envelope-from <lkp@intel.com>)
        id 1iKDOd-000Gza-SH; Tue, 15 Oct 2019 11:21:15 +0800
Date:   Tue, 15 Oct 2019 11:20:50 +0800
From:   kbuild test robot <lkp@intel.com>
To:     Tzung-Bi Shih <tzungbi@google.com>
Cc:     kbuild-all@lists.01.org, broonie@kernel.org, gwendal@google.com,
        devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
        cychiang@google.com, drinkcat@google.com, tzungbi@google.com,
        robh+dt@kernel.org, enric.balletbo@collabora.com,
        bleung@google.com, dgreid@google.com
Subject: Re: [alsa-devel] [PATCH v3 07/10] ASoC: cros_ec_codec: support WoV
Message-ID: <201910151124.lU6kl2Qj%lkp@intel.com>
References: <20191014180059.07.I5388b69a7a9c551078fed216a77440cee6dedf49@changeid>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191014180059.07.I5388b69a7a9c551078fed216a77440cee6dedf49@changeid>
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Tzung-Bi,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on asoc/for-next]
[cannot apply to v5.4-rc3 next-20191014]
[if your patch is applied to the wrong git tree, please drop us a note to help
improve the system. BTW, we also suggest to use '--base' option to specify the
base tree in git format-patch, please see https://stackoverflow.com/a/37406982]

url:    https://github.com/0day-ci/linux/commits/Tzung-Bi-Shih/ASoC-mediatek-mt8183-mt6358-ts3a227-max98357-support-WoV/20191014-183227
base:   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>


coccinelle warnings: (new ones prefixed by >>)

>> sound/soc/codecs/cros_ec_codec.c:774:7-14: WARNING opportunity for memdup_user

vim +774 sound/soc/codecs/cros_ec_codec.c

   754	
   755	static int wov_hotword_model_put(struct snd_kcontrol *kcontrol,
   756					 const unsigned int __user *bytes,
   757					 unsigned int size)
   758	{
   759		struct snd_soc_component *component = snd_kcontrol_chip(kcontrol);
   760		struct cros_ec_codec_priv *priv =
   761			snd_soc_component_get_drvdata(component);
   762		struct ec_param_ec_codec_wov p;
   763		struct ec_response_ec_codec_wov_get_lang r;
   764		uint8_t digest[SHA256_DIGEST_SIZE];
   765		uint8_t *buf;
   766		int ret;
   767	
   768		/* Skips the TLV header. */
   769		bytes += 2;
   770		size -= 8;
   771	
   772		dev_dbg(priv->dev, "%s: size=%d\n", __func__, size);
   773	
 > 774		buf = kmalloc(size, GFP_KERNEL);
   775		if (!buf)
   776			return -ENOMEM;
   777	
   778		if (copy_from_user(buf, bytes, size)) {
   779			ret = -EFAULT;
   780			goto leave;
   781		}
   782	
   783		ret = calculate_sha256(priv, buf, size, digest);
   784		if (ret)
   785			goto leave;
   786	
   787		p.cmd = EC_CODEC_WOV_GET_LANG;
   788		ret = send_ec_host_command(priv->ec_device, EC_CMD_EC_CODEC_WOV,
   789					   (uint8_t *)&p, sizeof(p),
   790					   (uint8_t *)&r, sizeof(r));
   791		if (ret)
   792			goto leave;
   793	
   794		if (memcmp(digest, r.hash, SHA256_DIGEST_SIZE) == 0) {
   795			dev_dbg(priv->dev, "not updated");
   796			goto leave;
   797		}
   798	
   799		if (ec_codec_capable(priv, EC_CODEC_CAP_WOV_LANG_SHM))
   800			ret = wov_set_lang_shm(priv, buf, size, digest);
   801		else
   802			ret = wov_set_lang(priv, buf, size, digest);
   803	
   804	leave:
   805		kfree(buf);
   806		return ret;
   807	}
   808	

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
