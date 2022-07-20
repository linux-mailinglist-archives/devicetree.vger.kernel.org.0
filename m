Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DEDDD57C019
	for <lists+devicetree@lfdr.de>; Thu, 21 Jul 2022 00:34:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229631AbiGTWej (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Jul 2022 18:34:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34408 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229441AbiGTWei (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Jul 2022 18:34:38 -0400
Received: from mail-io1-f45.google.com (mail-io1-f45.google.com [209.85.166.45])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 101194B0E2
        for <devicetree@vger.kernel.org>; Wed, 20 Jul 2022 15:34:37 -0700 (PDT)
Received: by mail-io1-f45.google.com with SMTP id e69so38152iof.5
        for <devicetree@vger.kernel.org>; Wed, 20 Jul 2022 15:34:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=E6+mWpMrbSxs+PG1o/Ja8+UNIibcv7CaFySMKY6pWrQ=;
        b=bGT52YAm0SNIA8i/0z3PigfE6f4OPPItRj6sf7GjumlF9HmfIzoyXRffxON8ZUGfem
         eQF74qKfWFZ3cB7DtxuDv5DD8n8LA6P+/RZ8YuKJLkgKzkYs0+52LDlGlmsnWOYWVXjg
         EFffXaBU5k3lKZNDL81j3L6P3Iuc8sNHGc5FByBx66eGgtCEgHfMUa1NE+g1X8pyB9NR
         ht3TOUsOPnhjDWwWRYrg84t2L6s6Yi/mwpngVfHyokH5eqcuvGJlmjlqZfKgTBklR4RP
         Ok40BLvI8EUaat803WfAYC0jVWn3Mz9gJF/cp4nYg6K/LlscvAD7vgqduAZ8XpX6cXmv
         R6PQ==
X-Gm-Message-State: AJIora+8e8zoVkd+nay3YuWrOJitHUK0yoI8oeRQiJWMJQyn0ZP5OVgU
        D1kiaRW6FtbcZDASmMAB2Q==
X-Google-Smtp-Source: AGRyM1sh0oRJIroxwJHSQ5BZYJWkp0XtTpGBLLU6OxZOfS7tLPMkY29N0yIUe2xwmQ7ObeUkjy11xA==
X-Received: by 2002:a05:6638:d45:b0:340:5c58:51f4 with SMTP id d5-20020a0566380d4500b003405c5851f4mr17519298jak.280.1658356476346;
        Wed, 20 Jul 2022 15:34:36 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id e101-20020a02866e000000b003316536ebc1sm57851jai.73.2022.07.20.15.34.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Jul 2022 15:34:35 -0700 (PDT)
Received: (nullmailer pid 4103876 invoked by uid 1000);
        Wed, 20 Jul 2022 22:34:33 -0000
Date:   Wed, 20 Jul 2022 16:34:33 -0600
From:   Rob Herring <robh@kernel.org>
To:     Zhu Ning <zhuning0077@gmail.com>
Cc:     alsa-devel@alsa-project.org, pierre-louis.bossart@linux.intel.com,
        tiwai@suse.com, broonie@kernel.org, devicetree@vger.kernel.org,
        David Yang <yangxiaohua@everest-semi.com>,
        Zhu Ning <zhuning@everest-semi.com>
Subject: Re: [PATCH v1 2/2] dt-bindings: sound: es8326: Add dtbindings
 documentation
Message-ID: <20220720223433.GA4099826-robh@kernel.org>
References: <20220718053237.20146-1-zhuning0077@gmail.com>
 <20220718053237.20146-2-zhuning0077@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220718053237.20146-2-zhuning0077@gmail.com>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jul 18, 2022 at 01:32:37PM +0800, Zhu Ning wrote:
> Add device tree binding documentation for Everest ES8326

For the subject, don't repeat 'bindings' and 'documentation' is 
redundant:

ASoC: dt-bindings: Add Everest ES8326 audio CODEC

> 
> Signed-off-by: David Yang <yangxiaohua@everest-semi.com>
> Signed-off-by: Zhu Ning <zhuning@everest-semi.com>
> ---
>  .../bindings/sound/everest,es8326.yaml        | 84 +++++++++++++++++++
>  1 file changed, 84 insertions(+)
>  create mode 100755 Documentation/devicetree/bindings/sound/everest,es8326.yaml

With that,

Reviewed-by: Rob Herring <robh@kernel.org>
