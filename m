Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8D4527771EE
	for <lists+devicetree@lfdr.de>; Thu, 10 Aug 2023 09:54:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232373AbjHJHyf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Aug 2023 03:54:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35452 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230407AbjHJHye (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Aug 2023 03:54:34 -0400
Received: from mail-yb1-xb2a.google.com (mail-yb1-xb2a.google.com [IPv6:2607:f8b0:4864:20::b2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3FF4EE5B
        for <devicetree@vger.kernel.org>; Thu, 10 Aug 2023 00:54:34 -0700 (PDT)
Received: by mail-yb1-xb2a.google.com with SMTP id 3f1490d57ef6-d645b95c7b8so158057276.0
        for <devicetree@vger.kernel.org>; Thu, 10 Aug 2023 00:54:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691654073; x=1692258873;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TSeGicSBHEOPmfEEX2zqiXkNZdtpptcPIj2vAAz2B3U=;
        b=G3qHx7YleJfbLXBpJ5jpk3gIEI4k4cGeiJSzCWCzuMHq5Je4D7lusCQu4zG+dPElmS
         LjihWQAzdst7pPPcTBTcCcSGHQ7hqeq1oB96//6Re8Mp/YHq/c4504ckD5aMlqhW0DsX
         aQJkn/M/0dwIPioa9dtR4GGpwx7hgLBnKvKLEmR4nhZUd1mBxP2RBX4ZCjHktYSVvRVI
         V+XLPkBgOjI2WslH4H2wyLkqrmhxvMqf8QoUmmb8fvXbq0J1q90CfMqiP8rh4J8OMb4M
         640J0WWnol70q8+nRG1A3DyYRroIckcJuhVHj4lrVINOd70GQKb/tDzHXfx4KkqUDEFG
         gQEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691654073; x=1692258873;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TSeGicSBHEOPmfEEX2zqiXkNZdtpptcPIj2vAAz2B3U=;
        b=N7Bnw8Sy/XpcY/SN1s+kaICaLUu9vEWoyDUe2OwcnoPstc9DLVMxKnJyq29YQT4xQ2
         UMur+VBKhw6rQEXA5WSSPpRn4nQIDhDahkLrkj8COF31YjOwPdKA/nax4I1Wt8HSy+xi
         ZVgBF8kw9l85xMxYa8O6RUrNoN1XseAQapO8Mb6jrlFaLWBrnUrIQhkbHzLsv0rl8t3T
         ZBEyE9Qg0Lp47UFW2n5iRy7MUzXa5PK94yV/hzunC2+bxpzaXFCQ4qEjDoK2X6sespFQ
         okDYJq/AAPIb9I8EXENjW6yASVIQhR6F2sPJ6Ntb7j3+nAWcFrxgZemmujYp0qEDbZHE
         7+6w==
X-Gm-Message-State: AOJu0YxD8iGrzko2wKKC/LNBfBqAyQ5WB6oIIgz8Em0UsGFIg16VF+kn
        PIKntNob1FQiR/WtEQsDaJk+cbDEMZqQYElzGfPNbA==
X-Google-Smtp-Source: AGHT+IHZkNv3UVCci6qEFn7ksboSBs7GEo6COS9ey293yBwUU48Z1EdRZNxmRQNYZUe7oNP2vO4efAfaQZ+3D0pTFzE=
X-Received: by 2002:a25:e04e:0:b0:d4d:15d8:bad1 with SMTP id
 x75-20020a25e04e000000b00d4d15d8bad1mr1897368ybg.35.1691654073464; Thu, 10
 Aug 2023 00:54:33 -0700 (PDT)
MIME-Version: 1.0
References: <20230720115524.137944-1-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230720115524.137944-1-krzysztof.kozlowski@linaro.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 10 Aug 2023 09:54:21 +0200
Message-ID: <CACRpkdbhej07QXTdPE4sx9tvHT_wjzDoCiTVJn727HHbgVtZCw@mail.gmail.com>
Subject: Re: [PATCH 1/2] ARM: dts: st: href-tvk1281618: fix touchscreen VIO supply
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jul 20, 2023 at 1:55=E2=80=AFPM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:

> According to bindings and Linux driver, there is no VDDIO but VIO
> supply:
>
>   ste-hrefprev60-tvk.dtb: synaptics@4b: Unevaluated properties are not al=
lowed ('vddio-supply' was unexpected)
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Patch applied!
Excellently shows how the schema files find real bugs in the DTS files!

Yours,
Linus Walleij
