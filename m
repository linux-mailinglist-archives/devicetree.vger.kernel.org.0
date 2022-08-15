Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EACE9592E38
	for <lists+devicetree@lfdr.de>; Mon, 15 Aug 2022 13:31:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230407AbiHOLbb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 Aug 2022 07:31:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50044 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230104AbiHOLba (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 Aug 2022 07:31:30 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A93F5DF3A
        for <devicetree@vger.kernel.org>; Mon, 15 Aug 2022 04:31:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1660563089; x=1692099089;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=+OUQZZ/X8dBv1rcCoXqNjaycmkWJ8UDm/JH2p/+/eys=;
  b=HA6g2I09B+SZM4pIW4chpC/DahRcKLaR/0WWSiNAGp2BqSGcxofJvSMt
   +6QPoj34mRy4/6BvymSr/YcwLa1S8KqcixcaD1Tq3E2y9ARCkLteI6wRv
   7VLDJ9lbi9YieP8NWJIPjHyH7o4kDpbVKKBdD/eNE7MWZuytyNZHOONsE
   s1pg9zmMVFF6jDOD1btzxL5KTU2L8dvji4YaVPLmnxEUGwELXC839i1J/
   4IRu1BFS7J+HJVv1IGkx2NtWUyAYhLzwqGtFEsjTEp7ptzIXC0yOZuakb
   ZabM5g62/9wRVd6rlUAMoWyxYZJPBa+AoizQGo6tkX8UVfcaC7SRfq8vH
   Q==;
X-IronPort-AV: E=Sophos;i="5.93,238,1654552800"; 
   d="scan'208";a="25604635"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 15 Aug 2022 13:31:28 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Mon, 15 Aug 2022 13:31:28 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Mon, 15 Aug 2022 13:31:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1660563088; x=1692099088;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=+OUQZZ/X8dBv1rcCoXqNjaycmkWJ8UDm/JH2p/+/eys=;
  b=aOSH5iAr2hA74ClZ4a3TrBXXBbz3Hy4RFaffxXS3qi1/p679kb8vfbAI
   5zrpGL9rPNSwOJxsTKY0r+6eEQN0fXzvizQ/7vG2E6DOR5tVRG/965ac5
   hjCVhpDlghX2Dse2WwLXMgMWmHyEgd41C6H0NI35PFsu3JZp+exQremWh
   7XcAnDYvTksgKOuvHeH5Uec8j3hoV50Xn3P+tVf/kPdq3MK8/pdkDGrv8
   +OvlSSbjyxGTzD2vmFBIAkxF75t0+bQlQ8I/qOVkZ7mzaeSzlw8WDWzTN
   gNXsFFgd7EMJXVw59DpIOErb7pJdP05RZCSdFWyESx7bN1tGzr43qGRYB
   Q==;
X-IronPort-AV: E=Sophos;i="5.93,238,1654552800"; 
   d="scan'208";a="25604634"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 15 Aug 2022 13:31:28 +0200
Received: from steina-w.localnet (unknown [10.123.49.11])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id ECC6E280056;
        Mon, 15 Aug 2022 13:31:27 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Lukasz Majewski <lukma@denx.de>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/1] ARM: dts: imx6q-mccmon6: Add fsl,err006687-workaround-present property
Date:   Mon, 15 Aug 2022 13:31:27 +0200
Message-ID: <13231899.uLZWGnKmhe@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20220720064712.1414438-1-alexander.stein@ew.tq-group.com>
References: <20220720064712.1414438-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Rob & Krzysztof,

ping.

Thanks and best regards
Alexander

Am Mittwoch, 20. Juli 2022, 08:47:12 CEST schrieb Alexander Stein:
> Add property for ERR006687 hardware workaround.
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> ---
> I do not have any access to the hardware, but given the redefinition of fec
> interrupts this is most likely to address ERR006687. So add the relevant
> property accordingly.
> 
> Put original author on To: to get feedback.
> 
>  arch/arm/boot/dts/imx6q-mccmon6.dts | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm/boot/dts/imx6q-mccmon6.dts
> b/arch/arm/boot/dts/imx6q-mccmon6.dts index 64ab01018b71..f08b37010291
> 100644
> --- a/arch/arm/boot/dts/imx6q-mccmon6.dts
> +++ b/arch/arm/boot/dts/imx6q-mccmon6.dts
> @@ -103,6 +103,7 @@ &fec {
>  	/delete-property/ interrupts;
>  	interrupts-extended = <&gpio1 6 IRQ_TYPE_LEVEL_HIGH>,
>  			      <&intc 0 119 IRQ_TYPE_LEVEL_HIGH>;
> +	fsl,err006687-workaround-present;
>  	status = "okay";
>  };




