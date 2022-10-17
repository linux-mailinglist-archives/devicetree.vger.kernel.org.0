Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 08B89600912
	for <lists+devicetree@lfdr.de>; Mon, 17 Oct 2022 10:49:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229452AbiJQIt2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Oct 2022 04:49:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49570 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229796AbiJQIt1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Oct 2022 04:49:27 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1902410DC
        for <devicetree@vger.kernel.org>; Mon, 17 Oct 2022 01:49:25 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id bj12so23207886ejb.13
        for <devicetree@vger.kernel.org>; Mon, 17 Oct 2022 01:49:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ur8IA2XfFVehJVfyvGio3wT5RKRTtvQ2gh4yATlbsSM=;
        b=KCaBRtPpKTFX3TBBPIF9EPb+x0r7QBcde9BI9jtKFbGUjnrjcjcKGhQh4cz27bFZJY
         elnTNWnvdoxzGxwXNJoIqdIREab9X5NRjizO6pSlnJMRBiA6+vBICFNnEuwt6FNOkqj7
         fqrQKLfxw/CZIhJykdJsc6J/BFIkeB/QfGb12gXZB5+UPoENWrDctTdDdR+59xHPhhhj
         N98FTKm4pwrhDPgPXFCaryZAVR8WNiA1gZt+pFLKfSMK5nkvs6vmh+z3vW+NnuslXwaw
         4w4UkJGn/tpuUP2ROzw0LOKidK5vF20TZnS7TLFJHZbyOeDG3cpFkdxDWWNLstLFWCE+
         ICqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ur8IA2XfFVehJVfyvGio3wT5RKRTtvQ2gh4yATlbsSM=;
        b=W01r1qkCF4SJfLpi81pZg1mNI/hxWFC5m+2WChw0qztsR3z76eE5Fyf/2q/K8YsDj8
         WSNzq72lGzgQCNABOqj7C8VWHrC0Q/QDBiWp365z0ijdLXn3j85gAGdKVuFBrdoetqfX
         1t7M9/k9u7my2+XysABMOpeZJmvSbCw1ioLyrhyVd1umCcZS69P2K5pbaYaLWkHbpq+x
         ZGn/R+chQtoz0pYrkFt5qKYPJOq7PaFAYnVw8LOL7hpbkMUf/xfl9Fv3IPg1LzToikVr
         CKF7g6m01C0OMBlzo4zfvYF6QdYZU/DM9yI1rfFOKdEekCCsOr9eOWc3Ez+5nKFtWezw
         GyQQ==
X-Gm-Message-State: ACrzQf3RzDifhUmGGab1A6NufdiZ0NlASn8IbqE+fkcGwms3Bf3AiGOW
        F4RzvinmwqMLQXFlGzSXMxyrdTCi5MSfZ2h5ysuXlA==
X-Google-Smtp-Source: AMsMyM6ksJr/GI0QTpcwrX9CLuUnwMNfW/GaLo39RZHmA/3d/gkSvPfkSMhXEgpy1QK71T9pH58UsLBF/mxC+G+Yr0g=
X-Received: by 2002:a17:907:7606:b0:78e:61d:757e with SMTP id
 jx6-20020a170907760600b0078e061d757emr7375630ejc.690.1665996563649; Mon, 17
 Oct 2022 01:49:23 -0700 (PDT)
MIME-Version: 1.0
References: <20221005145746.172138-1-m.zatovic1@gmail.com> <20221005145746.172138-2-m.zatovic1@gmail.com>
In-Reply-To: <20221005145746.172138-2-m.zatovic1@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 17 Oct 2022 10:49:12 +0200
Message-ID: <CACRpkdaxYcyEauFotzei8J0VOVksQH9Mm-AdF1aFU0BXjd4t4A@mail.gmail.com>
Subject: Re: [RFCv2 PATCH 2/4] bus: add Wiegand bus driver
To:     =?UTF-8?B?TWFydGluIFphxaVvdmnEjQ==?= <m.zatovic1@gmail.com>
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        brgl@bgdev.pl, gregkh@linuxfoundation.org,
        jeffrey.l.hugo@gmail.com, andersson@kernel.org,
        Michael.Srba@seznam.cz, saravanak@google.com, mani@kernel.org,
        hemantk@codeaurora.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Oct 5, 2022 at 4:58 PM Martin Za=C5=A5ovi=C4=8D <m.zatovic1@gmail.c=
om> wrote:

> The Wiegand bus driver spawns devices and matches them with
> drivers.
>
> Signed-off-by: Martin Za=C5=A5ovi=C4=8D <m.zatovic1@gmail.com>

Overall this is a vast improvement over the first patches!

I might not have time to look closer right now, but I see you got
a lot of comments from Krzysztof et al so you have some stuff to
work on.

Looking forward to the first non-RFC patch series!

Yours,
Linus Walleij
