Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EFA6179AF82
	for <lists+devicetree@lfdr.de>; Tue, 12 Sep 2023 01:47:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231681AbjIKUsi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Sep 2023 16:48:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59098 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236921AbjIKLkF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Sep 2023 07:40:05 -0400
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com [IPv6:2607:f8b0:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2FAF9CEB
        for <devicetree@vger.kernel.org>; Mon, 11 Sep 2023 04:40:00 -0700 (PDT)
Received: by mail-pg1-x52c.google.com with SMTP id 41be03b00d2f7-53482b44007so2990073a12.2
        for <devicetree@vger.kernel.org>; Mon, 11 Sep 2023 04:40:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google; t=1694432399; x=1695037199; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=8CrVsD9avnsAV7fcpyubc5/XQ49oMeNgq2mdV92nk8c=;
        b=GPLJcTUKyoHin+KlTi3kN0eLKOoO7CN1L0JyacZoq8n06Lr59750j3bxrQEcSMlLCb
         /MP8al0x7Kj5zrJXdKI5mFaWa2nnWajsyg0e6Mf200KqULbDfrMfKYVZE94YAETdTGla
         NcPwLme9wXW22jHq0cDmrOnxPWnrWw9O7GzCq6XkrJth8kqc1xHEP6FatiiXIkV7mSlZ
         ys50PQ2L7GMHCPVDd2uQXvT/dcpIR9+8hYP3Ry5g1Xzqm40yh2SEpD0+3hfqvrkYbKdT
         iii5Bzx0oiaQc2UZLMc3DfOHWH2GuHztodTqzoQt89Ogf1OPuwjbe+fYrsNOy3dvJZ69
         llcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694432399; x=1695037199;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8CrVsD9avnsAV7fcpyubc5/XQ49oMeNgq2mdV92nk8c=;
        b=jiplrxUtCxSWg1brtrLJcVSrKXbe40B/hakQif2+uxnU9jUwTzmOn86Dyz8d3WMuc/
         kU/5qVm32Nw/eh16t85fhlpPK13VhHJ0pWQ7ZTzhpFc9FrcBNij+0PGKJUws/dyBge4T
         tlNJfVFch0Jpg9A+x3HWlO9qVuzBRC9kqkusMw120c/9cgpXNfEd7M5zl1s7MRhvveDi
         Zkr+9/6ltqXmfs9DY/sNO4X5KU8xmjO8S4rj1xRrYt6n6u09NPgJ9bQn5/ix8ApdEv60
         DBA49TTKAz5An25STwkZl7ViDMM9ofpgBb4BGma6WJMbe8n/W1a4M/2XFPYoPqNekqET
         n0YQ==
X-Gm-Message-State: AOJu0YzQTYl0Ug34xOSJjfVfHbqr6MN2gwGd/eb4ZZzTcqF2YytBDG9D
        nWFGhvc9vNSgCVncF/+a15vEkYeKOFDCwkxX/J2hLQ==
X-Google-Smtp-Source: AGHT+IGQ0MEu3CYbp1oRozA5xchzHNnfGc4+g9TF6J0vVsnYTnh90AClMTinE7edS31ihrh/D+B7/zpqIUhgszsi8VU=
X-Received: by 2002:a17:90b:1295:b0:273:ec9c:a7e3 with SMTP id
 fw21-20020a17090b129500b00273ec9ca7e3mr4595166pjb.17.1694432399658; Mon, 11
 Sep 2023 04:39:59 -0700 (PDT)
MIME-Version: 1.0
References: <20230831101513.2042773-1-Naresh.Solanki@9elements.com>
 <0b7cb454-4c31-569c-7609-7931e6fb798a@linaro.org> <CABqG17g8QOgU7cObe=4EMLbEC1PeZWxdPXt7zzFs35JGqpRbfg@mail.gmail.com>
 <b38632d8-6a9e-7368-3309-16edfca5d2be@linaro.org>
In-Reply-To: <b38632d8-6a9e-7368-3309-16edfca5d2be@linaro.org>
From:   Naresh Solanki <naresh.solanki@9elements.com>
Date:   Mon, 11 Sep 2023 17:09:48 +0530
Message-ID: <CABqG17jA4_Mpq7-WjjsoJuOeBf8BbCy=Lix8XpjfkmU_-+N7ww@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: i2c: Add custom properties for MAX7357/MAX7358
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Peter Rosin <peda@axentia.se>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Patrick Rudolph <patrick.rudolph@9elements.com>,
        linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi


On Mon, 11 Sept 2023 at 16:13, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 11/09/2023 12:31, Naresh Solanki wrote:
>
> >>> diff --git a/Documentation/devicetree/bindings/i2c/i2c-mux-pca954x.yaml b/Documentation/devicetree/bindings/i2c/i2c-mux-pca954x.yaml
> >>> index 2d7bb998b0e9..fa73eadfdf7b 100644
> >>> --- a/Documentation/devicetree/bindings/i2c/i2c-mux-pca954x.yaml
> >>> +++ b/Documentation/devicetree/bindings/i2c/i2c-mux-pca954x.yaml
> >>> @@ -71,6 +71,23 @@ properties:
> >>>      description: A voltage regulator supplying power to the chip. On PCA9846
> >>>        the regulator supplies power to VDD2 (core logic) and optionally to VDD1.
> >>>
> >>> +  maxim,isolate-stuck-channel:
> >>> +    type: boolean
> >>> +    description: Allows to use non faulty channels while a stuck channel is
> >>> +      isolated from the upstream bus. If not set all channels are isolated from
> >>> +      the upstream bus until the fault is cleared.
> >>
> >> Nothing improved here. As I said, please provide arguments or drop this
> >> property.
> > These features cannot be enabled by default because doing so may lead
> > to unexpected behavior, such as bus disconnections(although that
> > wasn't expected).
> > These features should only be enabled after they have been validated
> > by the board designer.
> > Therefore, they cannot be enabled by default.
>
> And what is needed to validate them for given board? IOW, what changes
> in hardware design that it can or cannot be used?
Enabling PRECONNECT_TEST in my setup didn't work
Although this wasn't expected.

Regards,
Naresh

>
> Best regards,
> Krzysztof
>
