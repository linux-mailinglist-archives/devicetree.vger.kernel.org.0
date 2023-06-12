Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C426F72B8BA
	for <lists+devicetree@lfdr.de>; Mon, 12 Jun 2023 09:38:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232344AbjFLHiT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Jun 2023 03:38:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48216 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233318AbjFLHiS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Jun 2023 03:38:18 -0400
Received: from mail-ot1-x330.google.com (mail-ot1-x330.google.com [IPv6:2607:f8b0:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 42F3D10E9
        for <devicetree@vger.kernel.org>; Mon, 12 Jun 2023 00:37:27 -0700 (PDT)
Received: by mail-ot1-x330.google.com with SMTP id 46e09a7af769-6b15e510630so2330592a34.3
        for <devicetree@vger.kernel.org>; Mon, 12 Jun 2023 00:37:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1686555217; x=1689147217;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=sH9+9VxCvpbiTFFppMcfbBVPxw/EPavqd6zQGr7R/aM=;
        b=ab6l2ynLF+WlLZBwPOh7ztGUYxo2bBmUbFYFnGtyQwZcZP4M8yJF0/F5lmG5viTGpz
         knbf3Ld1Lj0CNFYXZrjbbLNjvPxaX2zjuKn2DwwzRgat7BKBZK93ysa99iufetol5zu/
         Gf0jcHfXMIJ73z2Z+Yw2/PSbp7++05yH0ANI2h1iUBz1gD+5yzXmoDKGYAICPaCNu/A6
         w155h7ldm51mQAd4/NKfDoKVhrvBcNqfQYJdboLr+Zz8elrVM/XrCQ8hq2XgHgsczDXr
         NRQtVl1zz2VWgrO0PP84LKGcaKP0pcIWPTtmFnKTLsc/3FMtcAoG2KyQKGSlcchYHr+4
         9XoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686555217; x=1689147217;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sH9+9VxCvpbiTFFppMcfbBVPxw/EPavqd6zQGr7R/aM=;
        b=W/rjdgY0JrF6cZQlfIFze8hNp3WBBe5NNKAlRsEcG1MnP7a0fDE3AP/c4heJcvT4sm
         6WQHzpCfjQUXMR/tbrHS4BBa1+M8ZBgeQKJmjw+oAcDuf2/k1cnVRzAnMRtI/sJDec8P
         LOzItw81+R7yAyk3zf34ka8ofVlToBfdABDykNFjhs12Pop0F0Q73yRUUuKri8vEdN/9
         hd9E4vISro9utRMiOaALn6LVd9N05xcKrK4c9MM+j7YtlfCOvl32Hig8Ziij4eBrSQhU
         C4Y2JnsSRrjxjMnOZjUw35+haZkxERMGgkt+37n5Db2y4mkYH9RdALdu2aI6B+L1+jRG
         7tkw==
X-Gm-Message-State: AC+VfDz0Ojpm3YGqhrEk6JAOutgr4EzqAznkWuloVZhgzlmAgSnTNHCl
        LYQq34tpxNB/g0aI3Im2A+cPPw==
X-Google-Smtp-Source: ACHHUZ68MTAY1eRJRYgYY8ftiOpK7rEOI/BZIFxKXhEmd7X2tHL3vMnLcgTrb1o8pV5N1uUWvlY49A==
X-Received: by 2002:a05:6830:18e5:b0:6b2:ab63:6e6 with SMTP id d5-20020a05683018e500b006b2ab6306e6mr5995178otf.26.1686555216945;
        Mon, 12 Jun 2023 00:33:36 -0700 (PDT)
Received: from sunil-laptop ([106.51.184.72])
        by smtp.gmail.com with ESMTPSA id c8-20020a9d4808000000b006b296562566sm3651491otf.79.2023.06.12.00.33.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jun 2023 00:33:36 -0700 (PDT)
Date:   Mon, 12 Jun 2023 13:03:28 +0530
From:   Sunil V L <sunilvl@ventanamicro.com>
To:     Conor Dooley <conor@kernel.org>
Cc:     palmer@dabbelt.com, Conor Dooley <conor.dooley@microchip.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Andrew Jones <ajones@ventanamicro.com>,
        Yangyu Chen <cyy@cyyself.name>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org
Subject: Re: [PATCH v3 3/7] RISC-V: validate riscv,isa at boot, not during
 ISA string parsing
Message-ID: <ZIbKSDHSzHhXf5c9@sunil-laptop>
References: <20230607-audacity-overhaul-82bb867a825f@spud>
 <20230607-guts-blurry-67e711acf328@spud>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230607-guts-blurry-67e711acf328@spud>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jun 07, 2023 at 09:28:27PM +0100, Conor Dooley wrote:
> From: Conor Dooley <conor.dooley@microchip.com>
> 
> Since riscv_fill_hwcap() now only iterates over possible cpus, the
> basic validation of whether riscv,isa contains "rv<width>" can be moved
> to riscv_early_of_processor_hartid().
> 
> Further, "ima" support is required by the kernel, so reject any CPU not
> fitting the bill.
> 
> Reviewed-by: Andrew Jones <ajones@ventanamicro.com>
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> ---

Reviewed-by: Sunil V L <sunilvl@ventanamicro.com>
