Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C17C759C0F4
	for <lists+devicetree@lfdr.de>; Mon, 22 Aug 2022 15:50:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234900AbiHVNtm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Aug 2022 09:49:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37318 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235359AbiHVNth (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Aug 2022 09:49:37 -0400
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com [209.85.210.48])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2EB1D19C02
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 06:49:35 -0700 (PDT)
Received: by mail-ot1-f48.google.com with SMTP id m21-20020a9d6ad5000000b00638df677850so7726000otq.5
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 06:49:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc;
        bh=cejaKDDYXIYA6U7opBTcalblurz4uhSMAdGKfo0VQxQ=;
        b=am5R3/qV5qq9SZd0MW/g9fEMBP4+m35svtnS+KMEEgI+CdcVBhL4Uw+oo5exU8FOEx
         sQtDZQAlCeIVhc9Co6lJ0pbfpqc0nrUenF+sFGzTakngAG+++uNWHcUuj5WV4B4l7h15
         OfQPVrTG2ZIBKOJ+ZbO5IX9YFVYQB61j/CM7K/5W5nA7wZ/NjoGe3/po3T2eaOymRIu0
         F7Xmc7prX4h9AjKVs2GtSir6xo/BvRFaDjF5NJHmZQMX/h85B118nh1meWBORtx3pLPi
         99roLj2mx1xihicniRLV7tGQQjXInmGMyrOIhOe6+2XDgMuSez1F2lEmgEm+WsEtqCSp
         jWWw==
X-Gm-Message-State: ACgBeo1bFraH2Xt9wRZgHFWDlwp0szcZ2N7plrABElbKOMqkVq07HFV3
        LAe3Ac1snnoSBPvB9QZ9cg==
X-Google-Smtp-Source: AA6agR7euGQrfXzc4WBfdwtew4ETsxebBYaIENELNeyMDQYQMMYQE/dUyJE5e659SJrQg63RndV20Q==
X-Received: by 2002:a05:6830:61c3:b0:616:d785:6e58 with SMTP id cc3-20020a05683061c300b00616d7856e58mr7580636otb.59.1661176174388;
        Mon, 22 Aug 2022 06:49:34 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id fq36-20020a0568710b2400b0011d02a3fa63sm1464803oab.14.2022.08.22.06.49.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Aug 2022 06:49:34 -0700 (PDT)
Received: (nullmailer pid 3757705 invoked by uid 1000);
        Mon, 22 Aug 2022 13:49:33 -0000
Date:   Mon, 22 Aug 2022 08:49:33 -0500
From:   Rob Herring <robh@kernel.org>
To:     Andrew Lunn <andrew@lunn.ch>
Cc:     Gregory Clement <gregory.clement@bootlin.com>,
        arm-soc <arm@kernel.org>,
        Device Tree <devicetree@vger.kernel.org>
Subject: Re: [PATCH 00/11] Start converting MVEBU bindings to YAML
Message-ID: <20220822134933.GC3732690-robh@kernel.org>
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

Please follow naming conventions of the subsystem for the subject.

s/^DT/dt-bindings/
s/YAML/DT schema/

Rob
