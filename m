Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 019B07281C0
	for <lists+devicetree@lfdr.de>; Thu,  8 Jun 2023 15:50:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234352AbjFHNuN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Jun 2023 09:50:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34518 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235844AbjFHNuL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Jun 2023 09:50:11 -0400
Received: from mail-yb1-xb2c.google.com (mail-yb1-xb2c.google.com [IPv6:2607:f8b0:4864:20::b2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F40552D40
        for <devicetree@vger.kernel.org>; Thu,  8 Jun 2023 06:50:05 -0700 (PDT)
Received: by mail-yb1-xb2c.google.com with SMTP id 3f1490d57ef6-bad05c6b389so730358276.2
        for <devicetree@vger.kernel.org>; Thu, 08 Jun 2023 06:50:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686232205; x=1688824205;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=J8QpnJSVLjkLfqhjKetMXB1z/ynBlgTXzzXr8NIKQBg=;
        b=eoeJediBHOzQ4sCzvkREN7NkrM+aOyYC9wrM0BBnD9QxoBLoy5vPtbG+E2gPKOhIwu
         EyNOe2N8inNUgS6tjtZnWsksbeCvcU8AoFBZ6DobK57j0QMubICD10enZz9lOfMoiZto
         dnEvHA8rWj9ZLoqv3YvVr4raYrYLM79xqk8YTt2cbBiEZAPfbmHKLO3XZuEbr0szb/95
         SsCYDLUHDN/89usT82gCPbSachy3FrjGTVQM2qjW2EJ9uSXC3cX2taX/RguroKB4gpOF
         aOvxH6ic6qAbhoKc4/toPBBjaozoEySEUg2T2tBycGzEMbSPSZvDTUa9JAlMnTpiNlUU
         uJtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686232205; x=1688824205;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=J8QpnJSVLjkLfqhjKetMXB1z/ynBlgTXzzXr8NIKQBg=;
        b=B/AJ0BwLiOaL9vHgFJDd0Gu60OCWxJzvhY55FEEHxBUYIRQDXR2GrQzrlj20ACvTi2
         s71/avdugECfJPS7OhrlkrCQq/ehENEiAZAMfR6mx2r1PQT6A0haPnsDaRpUdtthRcl2
         zIWRVFxB3ivBqMMIyisYSqZk7mF4ObJkFi1N/mVrT6p44ZuUkygsS/gRk4FOGjSB0b2h
         buBRdh6YNxlRoQ0ryLVHdFYlAe6I8wvlVYJ6tTT3UiGF73H6/8g2P/iTVnL94RyV5JjI
         RgrKJlHL7xzvC0+FJc1v9UHGWwJ8EIUo1swwYEnptuFBIoP0bUr3hoZX7shHznvEPVLU
         XurQ==
X-Gm-Message-State: AC+VfDyAzaJczSP6J0oJUnygQKIwbk5bbsjXIq4kZ7OAdEis8ZJBThLf
        A51uajBvBbeX4JKaVNDYN650ySQzxoLW6K5AHFh16w==
X-Google-Smtp-Source: ACHHUZ7B7bXPRaT8K13It0iwZz1KqJEF7lXGqjS4rO8Dx3uKOw8HQryytQq7nhVtQCV6nX83IX6Uwme+LOGCLFP0Fx4=
X-Received: by 2002:a81:6a87:0:b0:568:fe3a:46b3 with SMTP id
 f129-20020a816a87000000b00568fe3a46b3mr10251209ywc.28.1686232205112; Thu, 08
 Jun 2023 06:50:05 -0700 (PDT)
MIME-Version: 1.0
References: <20230602132859.16442-1-alexandre.torgue@foss.st.com> <20230602132859.16442-3-alexandre.torgue@foss.st.com>
In-Reply-To: <20230602132859.16442-3-alexandre.torgue@foss.st.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 8 Jun 2023 15:49:54 +0200
Message-ID: <CACRpkdahyWFFscLYTDBGGSp-67_+4Qj1dsDif-jDFWoEK0mXzw@mail.gmail.com>
Subject: Re: [PATCH v2 02/10] pinctrl: stm32: add stm32mp257 pinctrl support
To:     Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        Conor Dooley <conor+dt@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
        Olof Johansson <olof@lixom.net>, soc@kernel.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jun 2, 2023 at 3:29=E2=80=AFPM Alexandre Torgue
<alexandre.torgue@foss.st.com> wrote:

> Add stm32mp257 pinctrl support.
>
> Signed-off-by: Alexandre Torgue <alexandre.torgue@foss.st.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Please merge the whole series through ARM SoC with my ACK.

Yours,
Linus Walleij
