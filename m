Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6C2C3661789
	for <lists+devicetree@lfdr.de>; Sun,  8 Jan 2023 18:34:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235976AbjAHRef (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 8 Jan 2023 12:34:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57882 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233805AbjAHRee (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 8 Jan 2023 12:34:34 -0500
Received: from mail-il1-f179.google.com (mail-il1-f179.google.com [209.85.166.179])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A78E1D2DC
        for <devicetree@vger.kernel.org>; Sun,  8 Jan 2023 09:34:33 -0800 (PST)
Received: by mail-il1-f179.google.com with SMTP id i1so334494ilu.8
        for <devicetree@vger.kernel.org>; Sun, 08 Jan 2023 09:34:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hKproKir3HPkv8IvS6jPA1lAY60sR87AX6XZo0jpmrU=;
        b=MnNS05aLMuOkloW2zDq3Vsz2RFFluvyTN980+VDvil9EpGxJS+jDKRmyoNzWT1iIQ7
         AXimCTWCYdbNCLQBFmg/RYn3qwmjxYXgVz3UtdGpd1z+6wwbVqP+wV2aUnGQQfpQgGA2
         H+s5fzOLUGyK8PW1JRq5qxcEMoTqNY4LdPA9lxmKcHwcX+SHm9ezSJfXdcyADNpf7VX9
         vycMeq1sqDwCSt+pGCumSegSPLIbfcRjtW0+jPqPTi2y3RBmL0bBbSWoQoCvYcrCJfWG
         9cqb73SpTaqVtosV0203fWjopdACs4h8m4UwKUww0kcHr/tYt9xqr305QlD8VW8pncT9
         DAxg==
X-Gm-Message-State: AFqh2kpNtsFvXaanGc2/kAte7VLLLFX13fy1fkNlEB8qK9Mxl7jbF7Xf
        Xa6BqPwAYH2frCZiVfDQ7w==
X-Google-Smtp-Source: AMrXdXs/6tkgd/YFgM7+TqsDaJ+D3dVVhB/jbNBcIGfVOh9qRYTdfrVyAGfkd6r9yEENJJXK29/mRQ==
X-Received: by 2002:a05:6e02:c22:b0:30c:43be:2a61 with SMTP id q2-20020a056e020c2200b0030c43be2a61mr19107111ilg.5.1673199272913;
        Sun, 08 Jan 2023 09:34:32 -0800 (PST)
Received: from robh_at_kernel.org ([2605:ef80:8069:516a:f2b0:691e:4315:7c0f])
        by smtp.gmail.com with ESMTPSA id w17-20020a92ad11000000b0030c44ed932asm2037107ilh.29.2023.01.08.09.34.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Jan 2023 09:34:32 -0800 (PST)
Received: (nullmailer pid 107427 invoked by uid 1000);
        Sun, 08 Jan 2023 17:34:29 -0000
Date:   Sun, 8 Jan 2023 11:34:29 -0600
From:   Rob Herring <robh@kernel.org>
To:     Chris Morgan <macroalpha82@gmail.com>
Cc:     devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        tzimmermann@suse.de, robh+dt@kernel.org, daniel@ffwll.ch,
        airlied@gmail.com, linus.walleij@linaro.org, heiko@sntech.de,
        sam@ravnborg.org, dri-devel@lists.freedesktop.org,
        mripard@kernel.org, maarten.lankhorst@linux.intel.com,
        Chris Morgan <macromorgan@hotmail.com>,
        krzysztof.kozlowski+dt@linaro.org, thierry.reding@gmail.com,
        maccraft123mc@gmail.com
Subject: Re: [PATCH V7 2/4] dt-bindings: display: panel: Add Samsung
 AMS495QA01
Message-ID: <167319924411.106065.9131828641363471907.robh@kernel.org>
References: <20230103190707.104595-1-macroalpha82@gmail.com>
 <20230103190707.104595-3-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230103190707.104595-3-macroalpha82@gmail.com>
X-Spam-Status: No, score=-1.3 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Tue, 03 Jan 2023 13:07:05 -0600, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add documentation for Samsung AMS495QA01 panel (with Magnachip
> D53E6EA8966 controller IC).
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
> ---
>  .../display/panel/samsung,ams495qa01.yaml     | 57 +++++++++++++++++++
>  1 file changed, 57 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/samsung,ams495qa01.yaml
> 


Please add Acked-by/Reviewed-by tags when posting new versions. However,
there's no need to repost patches *only* to add the tags. The upstream
maintainer will do that for acks received on the version they apply.

If a tag was not added on purpose, please state why and what changed.

Missing tags:

Reviewed-by: Rob Herring <robh@kernel.org>


