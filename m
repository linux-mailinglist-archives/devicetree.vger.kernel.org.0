Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6A0FB59C107
	for <lists+devicetree@lfdr.de>; Mon, 22 Aug 2022 15:53:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233537AbiHVNx2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Aug 2022 09:53:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40118 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235426AbiHVNx0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Aug 2022 09:53:26 -0400
Received: from mail-oa1-f52.google.com (mail-oa1-f52.google.com [209.85.160.52])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8638ECE01
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 06:53:25 -0700 (PDT)
Received: by mail-oa1-f52.google.com with SMTP id 586e51a60fabf-11ba6e79dd1so12906610fac.12
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 06:53:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc;
        bh=Jsk2UI7xwyASIr3xTo9pxY5CrJnj2JLk/+YeNf0LqqI=;
        b=VkqE1owRkV1HV6bdHc357Dhw/4FkbSXwRvE/YXrQ7IKDZ+RLpDkUxXlhzHjh61sDst
         PBYPOYMQ4cawwyb/AU3jIjqhc1eb90x+jbqR3s9Xq6XIlvnSV+sFm4ReRtCOnhFKUKSw
         +4vXuiJPIvcy4OrwnQQPNRUPmfHxkExWh5BXH/bIBqiJ8p6QamtVF/HpD2dx/KYGKJCC
         KrWkzdOXXNEmavKvu8CFrhFI1LzOloL89YHUVKycPOQQiZFGUXJ1ZfyR/79GU59FhW+B
         Ah4uOXM1lIt0y62+x7BT79F6sK7fdG8s2cK9F8rp8iXaoX2ei07AT5OHtLIKy1hKZnrL
         kb4g==
X-Gm-Message-State: ACgBeo2sBb3gFyMYCS+PuEonzrmDCwZeWGU2oFoTl0BsA66gV/WO1J7U
        za0i+sFkxBozmfPSk/mN8Thbqd9NxA==
X-Google-Smtp-Source: AA6agR4+t2VKK2GHj560Qlxo+WIe33LAQzT5jycGKaDBo7sBwAcPdS0UlCA5sUGOJQOopzOu6Hl7+g==
X-Received: by 2002:a05:6870:b40f:b0:11c:b00a:141 with SMTP id x15-20020a056870b40f00b0011cb00a0141mr8553910oap.182.1661176404768;
        Mon, 22 Aug 2022 06:53:24 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id s3-20020a9d7583000000b0063703952843sm3000634otk.47.2022.08.22.06.53.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Aug 2022 06:53:24 -0700 (PDT)
Received: (nullmailer pid 3764178 invoked by uid 1000);
        Mon, 22 Aug 2022 13:53:23 -0000
Date:   Mon, 22 Aug 2022 08:53:23 -0500
From:   Rob Herring <robh@kernel.org>
To:     Andrew Lunn <andrew@lunn.ch>
Cc:     Gregory Clement <gregory.clement@bootlin.com>,
        arm-soc <arm@kernel.org>,
        Device Tree <devicetree@vger.kernel.org>
Subject: Re: [PATCH 00/11] Start converting MVEBU bindings to YAML
Message-ID: <20220822135323.GA3758572-robh@kernel.org>
References: <20220820194804.3352415-1-andrew@lunn.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220820194804.3352415-1-andrew@lunn.ch>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Aug 20, 2022 at 09:47:53PM +0200, Andrew Lunn wrote:
> This is the first batch of patches converting the Marvell MVEBU driver
> bindings from .txt to .yaml. So far, kirkwood has been used for
> testing, but these drivers apply to a range of Marvell SoCs.
> 
> In order to reduce the number of warnings from the DT schema checking
> tools, a few minor changes have been made to a few DT files. No actual
> errors have been found, the changes just make the checker quiet.
> 
> Andrew Lunn (11):
>   DT: RTC: orion-rtc: Convert to YAML
>   DT: thermal: marvell,kirkwood-thermal: Convert to YAML
>   DT: pinctrl: Convert marvell,kirkwood-pintctrl to YAML
>   DT: USB: Convert ehci-orion to YAML
>   DT: watchdog: Convert marvel.txt to YAML
>   arm: DT: kirkwood/orion5: Rename watchdog node
>   DT: nand-controller: Reflect reality of marvell,orion-nand
>   DT: mtd: Convert orion-nand to YAML
>   arm: DT: kirkwood.dtsi: Rename nand to nand-controller
>   DT: timer: Convert marvell,orion-timer.txt to YAML
>   DT: clock: Convert mvebu-gated-clock.txt to YAML

Also, there's not any dependency between most of these patches and they 
all go thru different subsystems, so no need for this to be 1 series.

Rob
