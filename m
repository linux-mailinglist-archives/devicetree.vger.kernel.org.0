Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2D07E6B6564
	for <lists+devicetree@lfdr.de>; Sun, 12 Mar 2023 12:27:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229999AbjCLL1H (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 12 Mar 2023 07:27:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34950 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230324AbjCLL0z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 12 Mar 2023 07:26:55 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B295F31E03
        for <devicetree@vger.kernel.org>; Sun, 12 Mar 2023 04:26:45 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id bp27so1962675lfb.6
        for <devicetree@vger.kernel.org>; Sun, 12 Mar 2023 04:26:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678620403;
        h=subject:in-reply-to:cc:to:from:date:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=HEmUoydFZk8zGB/4kLGG/3XvXToT0AP+al834P9gqxo=;
        b=C4fp62t63Ig3VaeU9mOsiXUyOGIWlGJooCiMHT15QLatHkPnTY0wD5bZ0cF2geNP5f
         wkiDuutdDbFcGnPBEagpk0fvBEAZxgKjysuT8Pb5YLj9GOz//UUsMekz3V4uqElLMU4u
         Aoxj+Lz/Sq/gLr+SFcklexpEboTadbQnPyBxQ0TYWhqbpKshLLzj/xxmKvkGZyqgJnFN
         KCJAvKOtfihlNtSXf4W5ZzLUjs8TWktR2X+MySfmYsyq8CZEMoE6jDYeKZ35kkShPI+S
         pUTdUiT4t9VWbQjGpBFPDW0jQzJ710HL/IB3IVS6G4sxMSFPPx1eZOpMAz0/qX0WlgbQ
         oVCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678620403;
        h=subject:in-reply-to:cc:to:from:date:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HEmUoydFZk8zGB/4kLGG/3XvXToT0AP+al834P9gqxo=;
        b=JG+9+0coPfYo7gxJoHHHL1T6Ze90P+k5OACQC1TCYffpY3PvwAtphgqlMkteyc1ADP
         UIuO982o7rimSv4kbcwbQ9PDLPGNgkU51bWiYdM5RpYT8VUj1tvrkEezQDUlwwok0ahj
         webx6H3fZ1uIyeE92DNQ9ZgTS3DDj4KjKxHsr3epnzwJAznzkWO1DoTvztXi/jwXfwYU
         lYTZl27pKJvzUOW8T/UxS86zkg0PjfYFY/TrbYfTRPtRp/BPa/wx16AIHhTVxnxd1aGf
         dgwNQ+aKZKdp1exj+H7bgneyhCKfmV9QJnrIfqRC2UKmjnvl0cZ7+7Ievb91rJY7RGyn
         98lA==
X-Gm-Message-State: AO0yUKVKdjJec2s4Rv2uLJg2niN+yAJkFIxU0DzenP6StCezDHs3Pvij
        DZ511lh1/z85Z3QIqsoKpkuCvuPI0WLl2wm0
X-Google-Smtp-Source: AK7set+kgLDkTWQq3xAHwIw98JZsmR9XQSaEi8Bub0dZ0kcl6pILx0APiRnAzzupIZGK8+8B4wNy4Q==
X-Received: by 2002:ac2:5ec8:0:b0:4e1:5d87:330c with SMTP id d8-20020ac25ec8000000b004e15d87330cmr8147529lfq.50.1678620403694;
        Sun, 12 Mar 2023 04:26:43 -0700 (PDT)
Received: from letter4.txt (46-138-144-249.dynamic.spd-mgts.ru. [46.138.144.249])
        by smtp.gmail.com with ESMTPSA id p23-20020a19f017000000b004d3d44bb98asm611659lfc.270.2023.03.12.04.26.43
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Mar 2023 04:26:43 -0700 (PDT)
Message-ID: <640db6f3.190a0220.dd54b.1572@mx.google.com>
Date:   Sun, 12 Mar 2023 04:26:43 -0700 (PDT)
From:   Sergey Lisov <sleirsgoevy@gmail.com>
To:     Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jaehoon Chung <jh80.chung@samsung.com>
Cc:     linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
In-Reply-To: <98f28de3-20b6-dd57-0c95-69c31f8bb76c@linaro.org>
Subject: Re: [PATCH v2 1/2] dt-bindings: synopsys-dw-mshc-common: add
 "fifo-access-32bit" property
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> There is no way this is board specific. This is SoC specific. I
> mentioned it last time.

The same compatible string ("samsung,exynos7-dw-mshc{,-smu}") is used by
several devices on different Exynos SoCs. And I was only able to find
a vendor kernel fork for one of them (exynos7885-jackpotlte, it has the
workaround, but it depends on a configuration option and I don't have the
config file for that device).

