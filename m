Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7C29E4E7C40
	for <lists+devicetree@lfdr.de>; Sat, 26 Mar 2022 01:21:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229883AbiCZABt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Mar 2022 20:01:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33364 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229821AbiCZABs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Mar 2022 20:01:48 -0400
Received: from mail-oi1-x234.google.com (mail-oi1-x234.google.com [IPv6:2607:f8b0:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4FD625C356
        for <devicetree@vger.kernel.org>; Fri, 25 Mar 2022 17:00:13 -0700 (PDT)
Received: by mail-oi1-x234.google.com with SMTP id z8so9887638oix.3
        for <devicetree@vger.kernel.org>; Fri, 25 Mar 2022 17:00:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=XwmOV7wslGBbWKst3lCi6LmAu6bXFmmyozlRIiVMLus=;
        b=kRm4OQ0AZ2GicUnGA1EWJwKr9zTduaZwV37Da//8xwdFmj9xMrL3PwvfHrNZufSThd
         oGtONJ29ljr8MY2TF+Mv1dW7VX0SkxQ5zQ2HpwLPk5TjiK4TH0vDb+0m/UH7Q4fYISSM
         zAVxlheCaRBtkKgbRl1T/cmNxh4WBmflmsAbA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=XwmOV7wslGBbWKst3lCi6LmAu6bXFmmyozlRIiVMLus=;
        b=ly9KsUVxTHw1vEaKpAiPe4fU9bxfs1XPQWbWq4/HD+B0ivpcdO+DKlA+p0OjyvPky3
         CYB9hBvP2EB4J6uHt/+asDjH/aED3Rej99lt3FqFcqRuw94SXFsiSzExDZEm0psHzv5u
         eK0ppdi14F/eH84XPe2jeQwW6tydWN+1QAsK+Kb2MzX65NzAmEZvl/CIaBRqCTppsM6K
         kwBWJZ2SUHyhHR0Ubf6qOHfnGN9DIGM4RlU1HR84Gx5llfS4o8Sqq8FctX1qJU5XM8Tm
         APIIoBQ+FqwVF7nikgTIE5SV/lYiaVde/CHBAA9fLergZ/Cwvs6j2abaq3NjSgAUvBzJ
         Qa/Q==
X-Gm-Message-State: AOAM5337aAF3Q1hWneCUvtErKaEbn1qrjAwA2hjqP5/rHCZjoCHw1/lg
        3nllm9542e7ZnHFfBEjP0FrQ6oYvuC1v6XMDuJQtYwyC438=
X-Google-Smtp-Source: ABdhPJxESYfHD3mh2m9IopbbIwY2icxa8lcVlrFeTUDB0qdd2eblqsJ/8zdmP+dxsuC7dFOHDC4SFHNzr+unne64PrM=
X-Received: by 2002:aca:bd41:0:b0:2ec:ff42:814f with SMTP id
 n62-20020acabd41000000b002ecff42814fmr6900670oif.63.1648252812719; Fri, 25
 Mar 2022 17:00:12 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 25 Mar 2022 19:00:12 -0500
MIME-Version: 1.0
In-Reply-To: <20220325220827.3719273-6-gwendal@chromium.org>
References: <20220325220827.3719273-1-gwendal@chromium.org> <20220325220827.3719273-6-gwendal@chromium.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Fri, 25 Mar 2022 19:00:12 -0500
Message-ID: <CAE-0n52HusYW0+KhZZq6cpX0+gF=jPGZsSThqww0wayDEbj6_w@mail.gmail.com>
Subject: Re: [PATCH v3 5/8] dt-bindings: iio: sx9324: Add internal
 compensation resistor setting
To:     Gwendal Grignou <gwendal@chromium.org>, jic23@kernel.org,
        robh+dt@kernel.org
Cc:     linux-iio@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Gwendal Grignou (2022-03-25 15:08:24)
> Allow setting the internal resistor used for compensation.
>
> Signed-off-by: Gwendal Grignou <gwendal@chromium.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
