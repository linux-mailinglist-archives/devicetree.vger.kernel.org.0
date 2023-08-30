Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A85F878DA1F
	for <lists+devicetree@lfdr.de>; Wed, 30 Aug 2023 20:36:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229830AbjH3Sfc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Aug 2023 14:35:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51974 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243815AbjH3Lrk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Aug 2023 07:47:40 -0400
Received: from mail-yw1-x112b.google.com (mail-yw1-x112b.google.com [IPv6:2607:f8b0:4864:20::112b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 686C4CC9
        for <devicetree@vger.kernel.org>; Wed, 30 Aug 2023 04:47:37 -0700 (PDT)
Received: by mail-yw1-x112b.google.com with SMTP id 00721157ae682-58caaedb20bso61960637b3.1
        for <devicetree@vger.kernel.org>; Wed, 30 Aug 2023 04:47:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693396056; x=1694000856; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E6qY7mr1if4mjzl6N/X/QNgn05V4Hq/iGd+Okpb2gPA=;
        b=dsEnzXEJxuqidSDS1+aIt0UnyaZ+/EWIFdvkiJhxfISwuVGlAcWx3VrTIeZPKeB5LW
         yW5/4H3QF+tl2/s6NcJ8R99D339/D0MhsH9gXKPZ9VuRXV+0QHTQVUxSFGVU7sePaQwZ
         PQ/Fp2NtoM8SsfSlJYqVNwXUWCBwPn9ZEd8+elAXRWJ42cmgd5/n0qhQuB9rYpvL6X1P
         7DXS3vn91YZBZbzxhu+sMfhW3ouH687I7Xr6ql0DYsPOM7svNo6Axdt7o9V+V0qhxFVj
         o8v5qq0SUPVXyNoBG+azlRArycP0T+ArxuqvsWLEmA26t3stwcJpBytTr7PCRd/zqhfw
         4jlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693396056; x=1694000856;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=E6qY7mr1if4mjzl6N/X/QNgn05V4Hq/iGd+Okpb2gPA=;
        b=kN6cSlaV2TCdYqoeq2fHRX2yO2LyvEIabkoGjGPrkugcyZA5IGbZA6KqcUaln2i5hH
         Yc28URdDLSBh2S1ZMj8fc0JSrhiXfb33AyeEvjtdTvVxO5aZtlDFPDkGXisSJ8ZjmK4b
         3NEEYmJYDpGC6m65xsK7cC9H67MSQZBjbXF/hdcukBNBrM4q2ChCti5VPECMaMyufhMY
         +Rw+0XodX+zvzqgHvLLlBcV15WnNwMbS0rS2yeeUvnxpL9LREN2Q11PIwWumJTAWPurA
         434wHKhS0hvcNgR8Bg4QkWtcEkZ6uIEx6/uGXmi6o8ZK91/unsmh1n7QyoNtkF32jQP1
         4elw==
X-Gm-Message-State: AOJu0YyROkj6cT/yHBda5JKzYZczU+9/G91oMPI7vZNeNqCjPXKEp2HY
        6Kj3ATaY7CMi3e8qj6cl+cn3msqRg+VeXf57ylWwFA==
X-Google-Smtp-Source: AGHT+IG+cDfVhvedCJoh1MydyK7VKRA/KVbr4a7x5p2hLIqH/Y7y+yfFDrrjPE8FE1bGRWGIDiLivpaB3dJHFKPBchA=
X-Received: by 2002:a5b:889:0:b0:d32:cd49:2469 with SMTP id
 e9-20020a5b0889000000b00d32cd492469mr2006211ybq.24.1693396056658; Wed, 30 Aug
 2023 04:47:36 -0700 (PDT)
MIME-Version: 1.0
References: <20230830-fp5-initial-v1-0-5a954519bbad@fairphone.com> <20230830-fp5-initial-v1-6-5a954519bbad@fairphone.com>
In-Reply-To: <20230830-fp5-initial-v1-6-5a954519bbad@fairphone.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 30 Aug 2023 13:47:25 +0200
Message-ID: <CACRpkdarpxAS21is7mOeSjqh0_teQcNYf2-WPd5BuLQSjFVF8g@mail.gmail.com>
Subject: Re: [PATCH 06/11] dt-bindings: pinctrl: qcom,sc7280: Allow gpio-reserved-ranges
To:     Luca Weiss <luca.weiss@fairphone.com>
Cc:     cros-qcom-dts-watchers@chromium.org,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Viresh Kumar <viresh.kumar@linaro.org>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
        linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Aug 30, 2023 at 11:58=E2=80=AFAM Luca Weiss <luca.weiss@fairphone.c=
om> wrote:

> Allow the gpio-reserved-ranges property on SC7280 TLMM.
>
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>

Acked-by: Linus Walleij <linus.walleij@linaro.org>

I assume this will be merged with the rest of the patches, poke me
after v6.6-rc1 if you want me to apply it to the pinctrl tree.

Yours,
Linus Walleij
