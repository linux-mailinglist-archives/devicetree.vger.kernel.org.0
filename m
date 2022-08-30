Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DD4775A6C35
	for <lists+devicetree@lfdr.de>; Tue, 30 Aug 2022 20:31:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229594AbiH3Sbj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Aug 2022 14:31:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59602 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229549AbiH3Sbi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Aug 2022 14:31:38 -0400
Received: from mail-oa1-f44.google.com (mail-oa1-f44.google.com [209.85.160.44])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 958286C139
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 11:31:37 -0700 (PDT)
Received: by mail-oa1-f44.google.com with SMTP id 586e51a60fabf-11eb44f520dso14542880fac.10
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 11:31:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc;
        bh=TNrvAyTIkfNehVAvMfwflurHea7IBQOFBVVZEW93pAs=;
        b=kbrPFtOv0Yr9ZHG9duXxy0CG148EIrMsvF/twiYV42Fjt1eSIDRC1pfu422EzX/MTp
         Rd7bMW9oGS+vkX+6sdYKAZpozsbg/DRCccoYAZCk0/VNToEYUBHTWZOL4iGPPU+Z5+zk
         QGyGMt69GY/E9x5DWADutq0B1IzP6XVw8iwtpMR8mEMPkPfw3q6T39q24EgINnB8LD0N
         XNkleEgTBiNSXMVMEWSUy21qf4xsOFVDPLRjOU4Oyd04jV3+1njDq53VPn1ZXQh11UMk
         ulKrepJBXImDSS0EH1KhmR1/3vZSEPflzrfC6YNZ/cp5Hqdy0mRhX6vI3x31p22p3E8+
         I7AA==
X-Gm-Message-State: ACgBeo0wRDSLN/BHeA8ycMQP4Up6Hg/cV98PjKkJ5vu4I1ittoLC31U3
        c4haz1kAXrxrDAy9AFtJysUiEW7X6A==
X-Google-Smtp-Source: AA6agR7sldE+6Qf4c7uukhaMe4n13fzKVQkiTi4x37RzlYebBrI9iXJyJYMmaq44VYUC4cNyls178w==
X-Received: by 2002:a05:6808:138b:b0:344:a921:9e06 with SMTP id c11-20020a056808138b00b00344a9219e06mr10237402oiw.272.1661884296916;
        Tue, 30 Aug 2022 11:31:36 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id a3-20020a544e03000000b0033e8629b323sm6387894oiy.35.2022.08.30.11.31.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Aug 2022 11:31:36 -0700 (PDT)
Received: (nullmailer pid 1816949 invoked by uid 1000);
        Tue, 30 Aug 2022 18:31:35 -0000
Date:   Tue, 30 Aug 2022 13:31:35 -0500
From:   Rob Herring <robh@kernel.org>
To:     Andrew Lunn <andrew@lunn.ch>
Cc:     Device Tree <devicetree@vger.kernel.org>, arm-soc <arm@kernel.org>,
        Gregory Clement <gregory.clement@bootlin.com>
Subject: Re: [PATCH v2 01/12] dt-bindings: RTC: orion-rtc: Convert to DT
 schema
Message-ID: <20220830183135.GA1816916-robh@kernel.org>
References: <20220825013258.3459714-1-andrew@lunn.ch>
 <20220825013258.3459714-2-andrew@lunn.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220825013258.3459714-2-andrew@lunn.ch>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 25 Aug 2022 03:32:47 +0200, Andrew Lunn wrote:
> Convert the text description to YAML. The clock is optional, Orion5x
> based boards don't have it, but kirkwood should.
> 
> Signed-off-by: Andrew Lunn <andrew@lunn.ch>
> ---
>  .../bindings/rtc/marvell,orion-rtc.yaml       | 48 +++++++++++++++++++
>  .../devicetree/bindings/rtc/orion-rtc.txt     | 18 -------
>  2 files changed, 48 insertions(+), 18 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/rtc/marvell,orion-rtc.yaml
>  delete mode 100644 Documentation/devicetree/bindings/rtc/orion-rtc.txt
> 

Reviewed-by: Rob Herring <robh@kernel.org>
