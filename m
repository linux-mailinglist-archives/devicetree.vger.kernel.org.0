Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 50D6B4B0E62
	for <lists+devicetree@lfdr.de>; Thu, 10 Feb 2022 14:27:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242171AbiBJN11 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Feb 2022 08:27:27 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:53390 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242170AbiBJN1T (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Feb 2022 08:27:19 -0500
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 04807204
        for <devicetree@vger.kernel.org>; Thu, 10 Feb 2022 05:27:20 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id e3so9664772wra.0
        for <devicetree@vger.kernel.org>; Thu, 10 Feb 2022 05:27:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=lccT1vDs39uO4OztszPn43naV87bgv8lF79Kis/tyDI=;
        b=ppLX4h1TEy8PBW7a4orzxmSRVpkxMMzDVgFrPPO+f6wmqSNbpVbyd980agqXUsmsK4
         1t3S3V3yoGn5PBZR2wXsNiBwTiBg+7IWH1M5aJJPZiGs155neECX0Xdc2i3WXR7UwbMM
         aT3Xtfs00uZGf1TbnMYWNrEUtQHMZ5qRjlmiRc0/xqYQhMq8duwRHg0U0Z9pXtKzJ45Q
         hYfhYVE/1cZLNyTrYw1GNDxUZjkYoAd3FPrsD2ljbrv3HGwfrkyETIATbgIB71TaTNDV
         dnfvww2HWwcMyGbOkxaLGF8pIQWjKAPbfSCnWB56bK0zNRSMtsjTh7NuJVkUEYKppMbv
         lTfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=lccT1vDs39uO4OztszPn43naV87bgv8lF79Kis/tyDI=;
        b=H3Ulxz/tvN6TMxiaAzYhJkFljgS79R94rQA6kN13Le1p1yIdwCJR/5usNI1I2Zm72j
         NkYW4Ls3bN+2owrY79WemijhdTr6Jc0SUd3VA68XHgNiWb/cvYp/IF0acGsxrHfPTegB
         xcUs6HFgCmXb/vq8s+bjcF+r6f0LgRZjXXgHpZHZvBZCZ2OZj19vpyxBPXixCfb2h4Md
         QiTbhPPOi6qQKPTtX6p2DyEJcIEcRGFY1bY5eZ/ie2do6BFcM/L2UryfpWHeHqycTz1q
         u4PpRLCEvsRedds+wucsCLKGRymv8T8GUzk62LHbmJyn+DbXUBzfeaakAiZWNM9yr7Ah
         HGvw==
X-Gm-Message-State: AOAM533Vpt4hQ+r+e1ucUMs/xMeA/WWboj6DAS+Ik0PHLzIahLd6PqWS
        H2+2lDuZMV3hPXgFpI8ZNVUtxQ==
X-Google-Smtp-Source: ABdhPJzKId3yDGkhp6bPVmSqb71G1h0/VzUuaq+GY1xoayMe32i7GhkM4V+qZRiTEWVDWxES+I9IMA==
X-Received: by 2002:a5d:4745:: with SMTP id o5mr485824wrs.275.1644499638587;
        Thu, 10 Feb 2022 05:27:18 -0800 (PST)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
        by smtp.googlemail.com with ESMTPSA id h6sm1559790wmq.26.2022.02.10.05.27.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Feb 2022 05:27:18 -0800 (PST)
Date:   Thu, 10 Feb 2022 14:27:15 +0100
From:   LABBE Corentin <clabbe@baylibre.com>
To:     Rob Herring <robh@kernel.org>
Cc:     linus.walleij@linaro.org, miquel.raynal@bootlin.com,
        richard@nod.at, vigneshr@ti.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-mtd@lists.infradead.org
Subject: Re: [PATCH v2] dt-bindings: mtd: drop mtd/cortina,gemini-flash.txt
Message-ID: <YgUSs3uIgpb91UgD@Red>
References: <20220131080858.1777518-1-clabbe@baylibre.com>
 <YgQvsQbGEBgfAoVO@robh.at.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <YgQvsQbGEBgfAoVO@robh.at.kernel.org>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Le Wed, Feb 09, 2022 at 03:18:41PM -0600, Rob Herring a écrit :
> On Mon, Jan 31, 2022 at 08:08:58AM +0000, Corentin Labbe wrote:
> > Drop mtd/cortina,gemini-flash.txt since it is nearly already handled by
> > Documentation/devicetree/bindings/mtd/mtd-physmap.yaml.
> > 
> > Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> > Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> > ---
> > Change since v1:
> > - fixed typo on syscon
> > 
> >  .../bindings/mtd/cortina,gemini-flash.txt     | 24 -------------------
> >  .../devicetree/bindings/mtd/mtd-physmap.yaml  | 18 +++++++++++++-
> >  2 files changed, 17 insertions(+), 25 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/mtd/cortina,gemini-flash.txt
> > 
> > diff --git a/Documentation/devicetree/bindings/mtd/cortina,gemini-flash.txt b/Documentation/devicetree/bindings/mtd/cortina,gemini-flash.txt
> > deleted file mode 100644
> > index efa5b2aba829..000000000000
> > --- a/Documentation/devicetree/bindings/mtd/cortina,gemini-flash.txt
> > +++ /dev/null
> > @@ -1,24 +0,0 @@
> > -Flash device on Cortina Systems Gemini SoC
> > -
> > -This flash is regular CFI compatible (Intel or AMD extended) flash chips with
> > -some special bits that can be controlled by the machine's system controller.
> > -
> > -Required properties:
> > -- compatible : must be "cortina,gemini-flash", "cfi-flash";
> > -- reg : memory address for the flash chip
> > -- syscon : must be a phandle to the system controller
> > -- bank-width : width in bytes of flash interface, should be <2>
> > -
> > -For the rest of the properties, see mtd-physmap.yaml.
> > -
> > -The device tree may optionally contain sub-nodes describing partitions of the
> > -address space. See partition.txt for more detail.
> > -
> > -Example:
> > -
> > -flash@30000000 {
> > -	compatible = "cortina,gemini-flash", "cfi-flash";
> > -	reg = <0x30000000 0x01000000>;
> > -	syscon = <&syscon>;
> > -	bank-width = <2>;
> > -};
> > diff --git a/Documentation/devicetree/bindings/mtd/mtd-physmap.yaml b/Documentation/devicetree/bindings/mtd/mtd-physmap.yaml
> > index f827984936f6..82eb4e0f453b 100644
> > --- a/Documentation/devicetree/bindings/mtd/mtd-physmap.yaml
> > +++ b/Documentation/devicetree/bindings/mtd/mtd-physmap.yaml
> > @@ -44,7 +44,9 @@ properties:
> >                - numonyx,js28f128
> >                - sst,sst39vf320
> >                - xlnx,xps-mch-emc-2.00.a
> > -          - const: cfi-flash
> > +          - enum:
> > +              - cfi-flash
> > +              - jedec-flash
> 
> Why is jedec-flash being added? The old doc made no mention of it.
> 

Because one board (gemini-dlink-dns-313.dts) use it.
See commit a10d862e585e06aacc3a03e230fdf8faf6b1caf0 
"""
The flash on the DNS-313 needs to be probed as JEDEC, it does
    not conform to the common CFI standard.
"""

I will add this (the addition of jedec-flash) in commmit log.

Regards
