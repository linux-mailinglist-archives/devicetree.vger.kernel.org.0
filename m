Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ACD8E7029C5
	for <lists+devicetree@lfdr.de>; Mon, 15 May 2023 11:58:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240072AbjEOJ6x (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 May 2023 05:58:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35054 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239784AbjEOJ6v (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 May 2023 05:58:51 -0400
Received: from mail-vk1-xa30.google.com (mail-vk1-xa30.google.com [IPv6:2607:f8b0:4864:20::a30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 61441E4F
        for <devicetree@vger.kernel.org>; Mon, 15 May 2023 02:58:49 -0700 (PDT)
Received: by mail-vk1-xa30.google.com with SMTP id 71dfb90a1353d-44ff6a049a7so4408714e0c.2
        for <devicetree@vger.kernel.org>; Mon, 15 May 2023 02:58:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1684144728; x=1686736728;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EbXtIGp63Fscsuq6HvXYDK8e/YBIj3uFeNgrwLOtSjg=;
        b=W8n2J/7TndzsZATZelIs3QwudW1eqdOYL3HJYK8CXM1bZGxhhsMsBBHq27NGgmaRwV
         m144VzSX5RUi6NQek8gWDGbqMlNCljhgs2ADrAS7S22hXtzw9diQF9D1BSgy+wWMF9zK
         STUM0/0OJDhbaJ8FzhUsRdM3brxuzyvZn1BnxrjaLxhBHV43P2yRU6GayDNot2dVWZ6g
         v3ibb4q+oVC6dBmMgjXcowBMN61F+z9RtC0J6T+oDXlYuBxyvVxyZS9Jn4r1HRqnAArD
         Ia0Nz+n/KKFnn8Z241c+4juVYqQ9D/dF2QD5O43RcnygL4yOZxJVZCAPRnadD7doLMDI
         caUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684144728; x=1686736728;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EbXtIGp63Fscsuq6HvXYDK8e/YBIj3uFeNgrwLOtSjg=;
        b=BWKbr93gTIEGnygghzHYEOD2eowgeIj5sulX+HOw5Zug8wUnoNTicTBYw7EJJwgllD
         OCF3Jton/1b6rZNzNfPZXcknS+Lbbgaq0e7KuNL2btiK1fedlInFGYvksTE/6ly6IVl6
         2EmxMvGJbYuSRvAfa47FKzRBxgWQQvMxZSTgE/gTohdMw7PAtBVUcrs5ZB5nlKs0uUbS
         k5zbsk3KmTOOQZPTEYy6CPuF8tga2uhYQXxuCGK0FSMvMXpGkX8OI0fM8ExiXJQ8NggE
         EtFcALIc6JCSpl8TIXr/yhHlnQ0uk3sVyIHlZyA/ZN0V01poZ/X9AnMejKWZz/e72NuS
         QP/w==
X-Gm-Message-State: AC+VfDxhS9RWAjrLhr8jDAyLSpPtChGwhX1dd8028D50qv7UefSJ8YDd
        m6aYinu/a3i/4QbQPQqGo23Wr8Q1W4JAjmJ7qIzSGg==
X-Google-Smtp-Source: ACHHUZ6DHZcKjPVvUXhtel4kMOfQHIuPoYEDoT3uupfFpobTSZjjgpOCyVhxviL7y9JsLigfEdajYPxDkpqzdJoa9X4=
X-Received: by 2002:a1f:3d14:0:b0:453:75ff:7fbe with SMTP id
 k20-20020a1f3d14000000b0045375ff7fbemr4987110vka.16.1684144728426; Mon, 15
 May 2023 02:58:48 -0700 (PDT)
MIME-Version: 1.0
References: <20230515095308.183424-1-brgl@bgdev.pl> <d10d66a6-3e28-5c42-c650-9d00d53045f0@linaro.org>
In-Reply-To: <d10d66a6-3e28-5c42-c650-9d00d53045f0@linaro.org>
From:   Bartosz Golaszewski <brgl@bgdev.pl>
Date:   Mon, 15 May 2023 11:58:37 +0200
Message-ID: <CAMRc=MdffxxgXqb3APCrc3en23WgHY6rxAb8Ed80oLc=bGLuCg@mail.gmail.com>
Subject: Re: [PATCH v4 0/3] arm64: qcom: sa8775p: add support for UFS
To:     Konrad Dybcio <konrad.dybcio@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, May 15, 2023 at 11:57=E2=80=AFAM Konrad Dybcio <konrad.dybcio@linar=
o.org> wrote:
>
>
>
> On 15.05.2023 11:53, Bartosz Golaszewski wrote:
> > From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> >
> > Update relevant DT bindings, add new config to the driver and add UFS
> > and PHY nodes to the .dtsi and enable them in the board .dts for
> > sa8775p-ride.
> >
> > v3 -> v4:
> > - drop applied patches
> > - mark the UFS as dma-coherent
> Bjorn picked all of these up, you need to send an incremental
> patch now.
>
> Konrad

Ah cr*p just saw it too, they were not in next yet so didn't notice
when rebasing. Will send an incremental patch then.

Bart
