Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B6ED669730E
	for <lists+devicetree@lfdr.de>; Wed, 15 Feb 2023 02:04:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229597AbjBOBEv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Feb 2023 20:04:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48988 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232704AbjBOBEt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Feb 2023 20:04:49 -0500
Received: from esa5.hgst.iphmx.com (esa5.hgst.iphmx.com [216.71.153.144])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AE3C5311F5
        for <devicetree@vger.kernel.org>; Tue, 14 Feb 2023 17:04:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1676423067; x=1707959067;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=IL5gc63/fDsz5QiSOYrQinbaMAqccro2o4wNnnC1ado=;
  b=dTwyriUSaW1sLwwD9m5FjTOBHNZ6DOXppKHEXvzXB/Y1q4YfkZwnelu/
   Ja99AW3w7OkbI+wCb2yVs0Roy7cw8nw5JrWss0+CiMoe8Xz7OsvOiVVQc
   aygg+RIY/ZulzyXHAe+QzWc2bi8oqfevaA9hTPycgkvn5Wk60dl+Y13xL
   aBDSBYphxUh7WOgoJpePRAOLYfkEsxpIJKHsScPkTvPlsFHV3KK793yuI
   UFxYmT/X3891J8eKp7pkr4NDrChNMJ1zaIv80Zz79P204S0h1SFCHAjpp
   5P80xE+uPBBDjsJF3zT364flIAF0DWURdLSQEFLhKrYOQS7j8TXhYu+si
   Q==;
X-IronPort-AV: E=Sophos;i="5.97,298,1669046400"; 
   d="scan'208";a="223115574"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com) ([199.255.45.15])
  by ob1.hgst.iphmx.com with ESMTP; 15 Feb 2023 09:04:03 +0800
IronPort-SDR: CQPBWQNH/lOjAF0rq8kTl3vmD/BavjjDXR7+rRGBLr7MjV6V4pGTPA8Wlu0zLtI2Gg6q+8Y8dB
 iO5U03mzrR99wcn+oc/U3/4zyaHkHeR3rTIEkUol4CShlKzWdwKSxlrq3S2tFUUmea333M0ec3
 JfqkGAHik4bfv34Hjejin1eIKNYtydfAk2Hu1gQLGPi8sjUj8SvtVDtBRFMo+v/qM0KiORhE3h
 m1TfC21XE1OGvBdNb/adz0/2aKCuRbPTmF3YhgvBT3M9h1KFOd5Cpt7m81Q51CpyzogooYAoQY
 of4=
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
  by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 14 Feb 2023 16:15:24 -0800
IronPort-SDR: SfvW/lAxwClaADyrr5Xl7HWT7waHHW6VO4Nr1gtnLAiHmuCOhhB01KMR2EDQZCUXLq+5a3PU5k
 WA/7UEzn7yW+5MM8J3aB4J7lDkTwNoRZOWekr4IMa/wBkGSDsQpwwvCHHglgFos0Qe2hjuduoB
 K3FwMGTl9OeUETnmRTJMeEkUiH9ywBJ6PuTrOdfqljNIsamvf2uH8cLzuY3CVGfQBLatKWstNf
 wYU6BNUmSbqRlym/ia/S4Rp27FlIbjcF37F1rwKTKx1BJBhFxYX/dmkANWcYCEtLj8E/kVhcM0
 o/8=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
  by uls-op-cesaip01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 14 Feb 2023 17:04:03 -0800
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
        by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4PGfwd3RmLz1Rwt8
        for <devicetree@vger.kernel.org>; Tue, 14 Feb 2023 17:04:01 -0800 (PST)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
        reason="pass (just generated, assumed good)"
        header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
        opensource.wdc.com; h=content-transfer-encoding:content-type
        :in-reply-to:organization:from:references:to:content-language
        :subject:user-agent:mime-version:date:message-id; s=dkim; t=
        1676423040; x=1679015041; bh=IL5gc63/fDsz5QiSOYrQinbaMAqccro2o4w
        NnnC1ado=; b=Agj6HOTfciGHKemaC/kKz7iwb6CDxRZwvQyJXZ4r8/Wi/iu/Y5x
        CTHrTb+EYd1DfG81IRn+J5CowQcgNzU1UKMaSDpRmLucwnr0O/xoD9HuTSMt/y5n
        v0DHHwlbDtB0Y9RGwLVWfbNN0OXginU5IkqIA+wNb6wubkR4SonTbnAvEjNFwr6E
        Kt2dhee0G2LAQxBksA/ZC+A9yzPK87kxbzXPYEwwj6ZEukAmZFo9iqNMPblIx/TB
        HExIgo5b8PRezGXV0HLOTck0/6XCBpFIAA7mca8M2bDhHCXYHI4RXs/SQKs1vVfQ
        QLDkDMoKI9VONS4oU/tZrzHOGztVTmacCUw==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
        by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id 5fr5xybqhXfg for <devicetree@vger.kernel.org>;
        Tue, 14 Feb 2023 17:04:00 -0800 (PST)
Received: from [10.225.163.116] (unknown [10.225.163.116])
        by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4PGfwY4pZ0z1RvLy;
        Tue, 14 Feb 2023 17:03:57 -0800 (PST)
Message-ID: <a0a2afa5-e364-b7af-958f-3d4a34672337@opensource.wdc.com>
Date:   Wed, 15 Feb 2023 10:03:56 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2 5/9] arm64: dts: rockchip: Add dtsi entry for RK3399
 PCIe endpoint core
Content-Language: en-US
To:     Rick Wertenbroek <rick.wertenbroek@gmail.com>,
        alberto.dassatti@heig-vd.ch
Cc:     xxm@rock-chips.com, rick.wertenbroek@heig-vd.ch,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Shawn Lin <shawn.lin@rock-chips.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Jani Nikula <jani.nikula@intel.com>,
        Rodrigo Vivi <rodrigo.vivi@intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Mikko Kovanen <mikko.kovanen@aavamobile.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org
References: <20230214140858.1133292-1-rick.wertenbroek@gmail.com>
 <20230214140858.1133292-6-rick.wertenbroek@gmail.com>
From:   Damien Le Moal <damien.lemoal@opensource.wdc.com>
Organization: Western Digital Research
In-Reply-To: <20230214140858.1133292-6-rick.wertenbroek@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_PASS,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2/14/23 23:08, Rick Wertenbroek wrote:
> Add dtsi entry for RK3399 PCIe endpoint core in the device tree.
> The status is "disabled" by default, so it will not be loaded unless
> explicitly chosen to. The RK3399 PCIe endpoit core should be enabled
> with the RK3399 PCIe root complex disabled because the RK3399 PCIe
> controller can only work one mode at the time, either in "root complex"
> mode or in "endpoint" mode.
> 
> Signed-off-by: Rick Wertenbroek <rick.wertenbroek@gmail.com>

You should also update the file:

Documentation/devicetree/bindings/pci/rockchip-pcie-ep.txt

The example there is broken...

Otherwise, this works great for me.

-- 
Damien Le Moal
Western Digital Research

