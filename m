Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CBA8259C0E5
	for <lists+devicetree@lfdr.de>; Mon, 22 Aug 2022 15:47:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235317AbiHVNrn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Aug 2022 09:47:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33542 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235369AbiHVNrk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Aug 2022 09:47:40 -0400
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com [209.85.210.47])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4F6672AC41
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 06:47:40 -0700 (PDT)
Received: by mail-ot1-f47.google.com with SMTP id 53-20020a9d0838000000b006371d896343so7711762oty.10
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 06:47:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc;
        bh=S1YaQXBgP01pfp1fSk/4K/Q8bIVXSsBmscoRpP8YuQg=;
        b=0xLBN3RUOn9Vh3iv/eNvWMrrGsz6UDM+beM7MvMTcb8NDd+v+rPAZkKYaAMxKr6D2X
         stcw/9na0wApAvVyb0cvdIycyOCneCCCvsSgvkWIzz3y32gASLg1wjFcSYUX3VePdUZ5
         vSota3/kLB3/unqzoCndpQe94JV2ujwihLihyfj+0wKXl1HDicUyBsgAGTIRK812Q5ov
         X298InafniqGgDb5216IisEgr5R6EHaZbM1LcPczv9DxRQwICEnqnZvpzsTZiRiP8ukM
         Lui6jMWVSJuY3ethIjtUrcueXlnbjF7UtzYnaAZf7q2P5V9PwqmwHNRyeYTqOZWO97xS
         HLFQ==
X-Gm-Message-State: ACgBeo0BW2tEFchtlKWi4ag/RwYCWEJXOHLP4GXnzIaKFNZTrog93d4u
        eZs7bfql9AJ5/Vu5fHEMBA==
X-Google-Smtp-Source: AA6agR48MuRJ/bdUq1O/oO8coo1HXbmNAv7X+It0GMpTKFP+nkaCzxV597y9krgj3BV4hf3EhAtN+Q==
X-Received: by 2002:a9d:65c5:0:b0:638:9777:c5b9 with SMTP id z5-20020a9d65c5000000b006389777c5b9mr7571479oth.107.1661176059555;
        Mon, 22 Aug 2022 06:47:39 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id n10-20020a0568080a0a00b003357568e39fsm2609167oij.57.2022.08.22.06.47.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Aug 2022 06:47:39 -0700 (PDT)
Received: (nullmailer pid 3754609 invoked by uid 1000);
        Mon, 22 Aug 2022 13:47:38 -0000
Date:   Mon, 22 Aug 2022 08:47:38 -0500
From:   Rob Herring <robh@kernel.org>
To:     Andrew Lunn <andrew@lunn.ch>
Cc:     Device Tree <devicetree@vger.kernel.org>, arm-soc <arm@kernel.org>,
        Gregory Clement <gregory.clement@bootlin.com>
Subject: Re: [PATCH 05/11] DT: watchdog: Convert marvel.txt to YAML
Message-ID: <20220822134738.GB3732690-robh@kernel.org>
References: <20220820194804.3352415-1-andrew@lunn.ch>
 <20220820194804.3352415-6-andrew@lunn.ch>
 <1661113286.970140.1729162.nullmailer@robh.at.kernel.org>
 <YwLLsj9gI6BVj9Vn@lunn.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YwLLsj9gI6BVj9Vn@lunn.ch>
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

On Mon, Aug 22, 2022 at 02:20:02AM +0200, Andrew Lunn wrote:
> > watchdog-timer@20300: $nodename:0: 'watchdog-timer@20300' does not match '^watchdog(@.*|-[0-9a-f])?$'
> > 	arch/arm/boot/dts/kirkwood-b3.dtb
> > 	arch/arm/boot/dts/kirkwood-blackarmor-nas220.dtb
> 
> This is fixed in the next patch.

Not really worried about that one.

> So far, i've been working on kirkwood. There are too many mvebu
> platforms to convert them all at once to YAML, i have over 50 patches
> with just kirkwood. So i expect there to be warnings for other SoC at
> the moment. Once i have kirkwood finished, i will probably work on
> orion5x and then armada-xp, and the other armada SoCs.

It was interrupts-extended warning that caught my attention. You've said 
there is only 1 interrupt, but clearly some platforms have 2. It's fine 
to fix the schemas to match reality in the conversion if needed, just 
note the changes in the commit msg.

Rob
