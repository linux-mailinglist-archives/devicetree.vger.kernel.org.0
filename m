Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6778772B8B6
	for <lists+devicetree@lfdr.de>; Mon, 12 Jun 2023 09:38:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233585AbjFLHiD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Jun 2023 03:38:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47988 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234584AbjFLHh6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Jun 2023 03:37:58 -0400
Received: from mail-ot1-x32e.google.com (mail-ot1-x32e.google.com [IPv6:2607:f8b0:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 18EF319B1
        for <devicetree@vger.kernel.org>; Mon, 12 Jun 2023 00:36:43 -0700 (PDT)
Received: by mail-ot1-x32e.google.com with SMTP id 46e09a7af769-6b2b7ca1c5eso2481490a34.0
        for <devicetree@vger.kernel.org>; Mon, 12 Jun 2023 00:36:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1686555099; x=1689147099;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=nx5q9fhjV96LWcx6Jfdpvto0r7F5SkawxjUbzYMVbU0=;
        b=eT5XQlBp3JB6as/gjlQ5au2yEWvcA0ehIUsxCZGBzEmeNx0MNIfmOvcf+RPT1vP0oX
         Y+7HgcnqJkC+pNuTXX4hhomMxdSASeICstbLqYzLp0mmBpkgq8WVscHD3xK7t7tfmKd5
         ipC9jAjS5UQ7feubrMoKrlov1vAdeaZTrPqvGbz5h0Vpl/J9d91/thC7dsh/qqJCpfPY
         efJMSfeFWvXGO59M6wfZSh89HFvv+HARTtzqPcju5XlEte9qAy885bv49Ce45Iu6dAWS
         gyEqquZrBpmhFdSFMEqQAdZ90e+MCXf6QBnlUixZTF9kx+rtFHZ0mQThRoUE5Obbh1Mf
         miBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686555099; x=1689147099;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nx5q9fhjV96LWcx6Jfdpvto0r7F5SkawxjUbzYMVbU0=;
        b=aLXb7EpjAHNAts0XpEpjhEKQivr/Pk+p5aQoOVbzMUWrzzGuFFd4ToZkBDMsKjoYmh
         ZvbFu9kGC3pIPFKBVucUcU/D13m5d/Wlh+V8DbVooDY1ZROkb5ji7sZgizkgCbuois2y
         Qf9ROk6L6zUYVascrKzHu2r9nLXtPC8nqyKhI3G3fgKykPx0TG73oWU9WUvDRI/vuSUu
         ln01VtxTTwea9HbJnuCjO2tj7qBfDu/s6zBdvx5aqOS9iAQnhmPmjUqLbwizBcuHWkrd
         uvFGRz3zw2COVaTMitfYIjk/Se+2GWBul3FreLQsT2TjNyEWIzkVqIL+7P/15Qv6jw6N
         I0wg==
X-Gm-Message-State: AC+VfDwUxrYMx/oIyD36n32fTFbZPf61U91VjqOCYkdKy3vyCwkAzdJT
        3uZU7uAlfyT2LikduWcIX2CZrQ==
X-Google-Smtp-Source: ACHHUZ5Ap9pNRWhgpC8RvE81RET8/5ETAo0vrRv256Y4Zcz9SkmYPZaSO3HQiai2JyOZSVOBWpGZPw==
X-Received: by 2002:a05:6830:110f:b0:6b2:9c7f:bcc5 with SMTP id w15-20020a056830110f00b006b29c7fbcc5mr5691081otq.22.1686555099149;
        Mon, 12 Jun 2023 00:31:39 -0700 (PDT)
Received: from sunil-laptop ([106.51.184.72])
        by smtp.gmail.com with ESMTPSA id p16-20020a0568301d5000b006a64043ed69sm3674667oth.56.2023.06.12.00.31.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jun 2023 00:31:38 -0700 (PDT)
Date:   Mon, 12 Jun 2023 13:01:31 +0530
From:   Sunil V L <sunilvl@ventanamicro.com>
To:     Conor Dooley <conor@kernel.org>
Cc:     palmer@dabbelt.com, Conor Dooley <conor.dooley@microchip.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Andrew Jones <ajones@ventanamicro.com>,
        Yangyu Chen <cyy@cyyself.name>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org
Subject: Re: [PATCH v3 2/7] RISC-V: split early & late of_node to hartid
 mapping
Message-ID: <ZIbJ02v1c/dG3ywb@sunil-laptop>
References: <20230607-audacity-overhaul-82bb867a825f@spud>
 <20230607-glade-pastel-d8cbd9d9f3c6@spud>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230607-glade-pastel-d8cbd9d9f3c6@spud>
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SCC_BODY_URI_ONLY,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jun 07, 2023 at 09:28:26PM +0100, Conor Dooley wrote:
> From: Conor Dooley <conor.dooley@microchip.com>
> 
> Some back and forth with Drew [1] about riscv_fill_hwcap() resulted in
> the realisation that it is not very useful to parse the DT & perform
> validation of riscv,isa every time we would like to get the id for a
> hart.
> 
> Although it is no longer called in riscv_fill_hwcap(),
> riscv_of_processor_hartid() is called in several other places.
> Notably in setup_smp() it forms part of the logic for filling the mask
> of possible CPUs. Since a possible CPU must have passed this basic
> validation of riscv,isa, a repeat validation is not required.
> 
> Rename riscv_of_processor_id() to riscv_early_of_processor_id(),
> which will be called from setup_smp() & introduce a new
> riscv_of_processor_id() which makes use of the pre-populated mask of
> possible cpus.
> 
> Link: https://lore.kernel.org/linux-riscv/xvdswl3iyikwvamny7ikrxo2ncuixshtg3f6uucjahpe3xpc5c@ud4cz4fkg5dj/ [1]
> Reviewed-by: Andrew Jones <ajones@ventanamicro.com>
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> ---
Reviewed-by: Sunil V L <sunilvl@ventanamicro.com>
