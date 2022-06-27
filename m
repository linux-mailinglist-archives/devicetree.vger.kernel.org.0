Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 10F1B55DDDB
	for <lists+devicetree@lfdr.de>; Tue, 28 Jun 2022 15:28:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236443AbiF0QYI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Jun 2022 12:24:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55240 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238258AbiF0QYG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Jun 2022 12:24:06 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6797FB1D5
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 09:24:05 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id k22so13816102wrd.6
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 09:24:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=9ZJokoMXakMIFvLaDTnIr0oqMcFY7ZRf51dGtS2NzKw=;
        b=feeC4sKGHE7611Q+VF/dI1qLSv1TW8TB6IEUb172FaXQGILpjVUaEUzdifEOwGFOCR
         2bQ5TCjXlEy5/hx5mWbltaaG2B8wr5ugFpllP8i6iOPzDtEZABXfGIP3DMXZ9FvR/5Uk
         IzwOCB1CQCzzb5tGlJyMpgotO/sW/7G0KxDhK89RhjlWPVmH/gvJrNqlX8HgN2JRh9xl
         /z3e2vhQkyYi+ROJJGuQ7bdtAh1WpsBmB05yEbqxAX17bkAAr/WfNX4gg0Lo7abcziJe
         nSu3CLjJi5jsIKf3yB1Ud2thAqk1+UXl1TBX3rZLAIOX93jlxXgehnNP/Fl4PPt9wike
         HiPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=9ZJokoMXakMIFvLaDTnIr0oqMcFY7ZRf51dGtS2NzKw=;
        b=x4Nwjea6fgNYx6zb6koZ/rJcAPOA2m74QPhaGZ5qZAi/MvuXhZ4JOZvqVt7/2zVZ6J
         EB/GnMGytgmt3NzvBhOn4PW1vv7DdByY10MCkhMR0MWxGL2axddBynIj5H1BYsiw5nN0
         zzeNTcI5zjBSQibsP+nmPfAun/i0cs0UTlvhLJ1yObh3B3UNGeKjy9zr3Vw59Ydr0L5u
         tWEpVbdasHmYT8Il86YgQ8VZ5cMbJpOs+PrEK94CHGNyhfaJOf9gHYOwmy4Y6OYML0yw
         cuvWz5mP74A5nELyOhBOkAjm9ewfKvPn4GoVy65DWDzmmBZ/LjuLQivoa52fVOIP+AFQ
         2x1A==
X-Gm-Message-State: AJIora/BJwq/51Sr2rYG7NdE5KBjFZlHciKS2VzaHQl037XpbVK5XXAf
        RlxYg0URnl4q0Ec3x8rXogG/KvV1ikh0PA==
X-Google-Smtp-Source: AGRyM1uZ9qNp8zEkPoKpJGNx/hE5miAeiNLVcPpeva+u+qwk34ucCb4LUGHAkEV7oJ9n/6hP9pxjxQ==
X-Received: by 2002:a5d:5966:0:b0:21b:80b5:ecc3 with SMTP id e38-20020a5d5966000000b0021b80b5ecc3mr12913127wri.130.1656347044005;
        Mon, 27 Jun 2022 09:24:04 -0700 (PDT)
Received: from google.com (cpc155339-bagu17-2-0-cust87.1-3.cable.virginm.net. [86.27.177.88])
        by smtp.gmail.com with ESMTPSA id l16-20020adffe90000000b0021b9a4a75e2sm10887612wrr.30.2022.06.27.09.24.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jun 2022 09:24:03 -0700 (PDT)
Date:   Mon, 27 Jun 2022 17:24:01 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Samuel Holland <samuel@sholland.org>
Cc:     Chen-Yu Tsai <wens@csie.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        linux-gpio@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/4] mfd: axp20x: Add AXP221/AXP223/AXP809 GPIO cells
Message-ID: <YrnZof9lwsIQCqu7@google.com>
References: <20220616060915.48325-1-samuel@sholland.org>
 <20220616060915.48325-3-samuel@sholland.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220616060915.48325-3-samuel@sholland.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 16 Jun 2022, Samuel Holland wrote:

> These PMICs all contain a compatible GPIO controller.
> 
> Signed-off-by: Samuel Holland <samuel@sholland.org>
> ---
> 
>  drivers/mfd/axp20x.c | 9 +++++++++
>  1 file changed, 9 insertions(+)

Applied, thanks.

-- 
Lee Jones [李琼斯]
Principal Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
