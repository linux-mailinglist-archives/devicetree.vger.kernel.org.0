Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 27C325A6C7C
	for <lists+devicetree@lfdr.de>; Tue, 30 Aug 2022 20:43:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231540AbiH3Snn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Aug 2022 14:43:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50940 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231512AbiH3Snk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Aug 2022 14:43:40 -0400
Received: from mail-oa1-f49.google.com (mail-oa1-f49.google.com [209.85.160.49])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 11DBB719AE
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 11:43:36 -0700 (PDT)
Received: by mail-oa1-f49.google.com with SMTP id 586e51a60fabf-11edd61a9edso12833364fac.5
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 11:43:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc;
        bh=rSGqIKaWJx4R4bUfe0Omf0nrWxdjC071wJDzr6SYEFI=;
        b=PH0dR6JI1yvkhefPYJCGhxJC97nvLNrgudnXISflhOMAi6yz/+YIYv+lz6MlOqNbUc
         iA0Ym1erOIb67dNfYaunrdDcMrrf2Hn7MK7RaLI1WPCrN7XlL1euFCREIKNIc8QA1jgA
         +eU1nO13lz4nMJD6i7sgS/Ocll+m5DrC46xkWc7anr3h9UJ424ZF/PFTUtFenrHnsFPz
         lr/Weu7SqCj6LZnPnt1k2oePoDrACncPXmt4FhFi6sPL9gpF/EPUtEU4kND1Q76HQEGd
         WENpL2sSBz/mxb9JCJysfron95LR0CX47jfXtF4/XYn5b7OiSkyYjzmZsGRY2wR4HQqA
         /t6g==
X-Gm-Message-State: ACgBeo1jVe3DITmsqz1ZA3bH6oXY9wPdPicDJcgVWtWbBPT+7LJXRTCY
        rkS+HpOWQwDoCvpKXaIoFxOYKPAZ7A==
X-Google-Smtp-Source: AA6agR7uAW/qGHnJ6m4c1HGT0W3p1Ka1MuJUbTlEBrrjv+gY1LC7B5ZqVjhM9w26tSsZbZnXlI46fg==
X-Received: by 2002:a05:6870:8890:b0:101:db34:3ed6 with SMTP id m16-20020a056870889000b00101db343ed6mr11345946oam.151.1661885015371;
        Tue, 30 Aug 2022 11:43:35 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id s2-20020a4aeac2000000b0044884c40c8asm7033999ooh.30.2022.08.30.11.43.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Aug 2022 11:43:35 -0700 (PDT)
Received: (nullmailer pid 1836908 invoked by uid 1000);
        Tue, 30 Aug 2022 18:43:34 -0000
Date:   Tue, 30 Aug 2022 13:43:34 -0500
From:   Rob Herring <robh@kernel.org>
To:     Andrew Lunn <andrew@lunn.ch>
Cc:     Gregory Clement <gregory.clement@bootlin.com>,
        arm-soc <arm@kernel.org>,
        Device Tree <devicetree@vger.kernel.org>
Subject: Re: [PATCH v2 00/12] Start converting MVEBU bindings to DT Schema
Message-ID: <20220830184334.GA1825505-robh@kernel.org>
References: <20220825013258.3459714-1-andrew@lunn.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220825013258.3459714-1-andrew@lunn.ch>
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

On Thu, Aug 25, 2022 at 03:32:46AM +0200, Andrew Lunn wrote:
> This is the first batch of patches converting the Marvell MVEBU driver
> bindings from .txt to .yaml. So far, kirkwood has been used for
> testing, but these drivers apply to a range of Marvell SoCs.
> 
> In order to reduce the number of warnings from the DT schema checking
> tools, a few minor changes have been made to a few DT files. No actual
> errors have been found, the changes just make the checker quiet.
> 
> I propose these patches are merged via mvebu to arm-soc. No conflicts
> are expected with these patches.

Why? I strongly prefer the bindings go via subsystem trees. That is the 
documented way.

As pointed out in v1, you again have not Cc'ed the subsystem 
maintainers. Please resend.

Rob
