Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2A08965BC17
	for <lists+devicetree@lfdr.de>; Tue,  3 Jan 2023 09:22:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236994AbjACIWG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Jan 2023 03:22:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45810 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237135AbjACIWE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 Jan 2023 03:22:04 -0500
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2526C65D4
        for <devicetree@vger.kernel.org>; Tue,  3 Jan 2023 00:22:04 -0800 (PST)
Received: by mail-lf1-x12b.google.com with SMTP id bp15so44642563lfb.13
        for <devicetree@vger.kernel.org>; Tue, 03 Jan 2023 00:22:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hnNplO8zsSj05CAnhZjssEtarwgdK7a3BUAmXeHqfTE=;
        b=IRDYFhgv7CWgApeZ9OhEzu4ziX6vYEoYanJOwxAVtNXXyq/6zS+qWU0v9JYWo+nTfr
         75SUTilDQ6Wappp/0y36aU6HUHsoldMMAZOoCVs0bccvE8mHrAOQHuKhfI2OI8VjT+09
         UU8jLYsLpZFuNwRey5xq1BPaD4oO9teX0QXKL95viaZ5J/EdMvJtY3X+lQMZB4tbEvGN
         /tRbizkhie2NJuQiN0F8URex/wWIwEaW+ujREEPAJu8xRf2wnNfu8nz62Yr7iXHXrzLL
         WwePuWhjeCaZvvfrBZH3flKA+v9TKZBDYwjyDQyhGYOqRV99y8Jyq0EJw3wNGjPhG68b
         WQaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hnNplO8zsSj05CAnhZjssEtarwgdK7a3BUAmXeHqfTE=;
        b=aSZkzXlNOlPN2JnCju2HQd8aG1tZZmjxX3OHcQuYzQhi45ztj78tb25XkfquU0shvg
         0pyb2jFch12A6kGAbLmNPXlPsm3ti2sFVkvAEzxF2J5wVKGm83xoqifjXBiKlF9cUBUZ
         m6efNY0n7fhDHiyPAIJ1r03AyaYlYbRijHFWAjkXgC+58HIoH1E7lrOuxhCPRey2b22P
         IOtZl6dl53w3JJcMzZLt/54577vPmFmW5fqNZIWSh3aJvBb6bV8QJYcl/1JBoI5yS3uw
         XRqjcu3QeceCQkvdApLEJ743/ATHgJ5Yez7CJNkKRNIzU76Owd5iceoF9/FrDDnhF8Rt
         8C6w==
X-Gm-Message-State: AFqh2krEq3fE4o1sNSQvOCrTrjFvRKaJXZ144vrQCZtHHLbk55zvf3NY
        OK7PaJGvqW7cyjet6xsOyn6Oqw==
X-Google-Smtp-Source: AMrXdXvbZP6isWmvcJTEe2l329jkWLKnwxKfmHzK41+F7rk8tb5+8boVcvSBIznNrbeyntQ/Q+zNzQ==
X-Received: by 2002:ac2:490f:0:b0:4b6:eca8:f6ca with SMTP id n15-20020ac2490f000000b004b6eca8f6camr10992900lfi.67.1672734122520;
        Tue, 03 Jan 2023 00:22:02 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id p23-20020a056512139700b004b577085688sm4757340lfa.82.2023.01.03.00.22.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Jan 2023 00:22:02 -0800 (PST)
Message-ID: <dccc7a0f-9eaf-24ca-e800-8ee1417e74f9@linaro.org>
Date:   Tue, 3 Jan 2023 09:22:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [RFC PATCH 2/4] dt-bindings: vendor-prefixes: Add lincolntech
Content-Language: en-US
To:     Aradhya Bhatia <a-bhatia1@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Tomi Valkeinen <tomba@kernel.org>,
        Jyri Sarha <jyri.sarha@iki.fi>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Maxime Ripard <maxime@cerno.tech>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Guo Ren <guoren@kernel.org>
Cc:     DRI Development List <dri-devel@lists.freedesktop.org>,
        Devicetree List <devicetree@vger.kernel.org>,
        Linux Kernel List <linux-kernel@vger.kernel.org>,
        Linux RISC-V List <linux-riscv@lists.infradead.org>,
        Linux ARM Kernel List <linux-arm-kernel@lists.infradead.org>,
        Linux Mediatek List <linux-mediatek@lists.infradead.org>,
        Linux C-SKY Arch List <linux-csky@vger.kernel.org>,
        Nishanth Menon <nm@ti.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Rahul T R <r-ravikumar@ti.com>,
        Devarsh Thakkar <devarsht@ti.com>,
        Jai Luthra <j-luthra@ti.com>,
        Jayesh Choudhary <j-choudhary@ti.com>
References: <20230103064615.5311-1-a-bhatia1@ti.com>
 <20230103064615.5311-3-a-bhatia1@ti.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230103064615.5311-3-a-bhatia1@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/01/2023 07:46, Aradhya Bhatia wrote:
> Add document vendor prefix for Lincoln Technology Solutions
> (lincolntech).
> 
> Signed-off-by: Aradhya Bhatia <a-bhatia1@ti.com>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

