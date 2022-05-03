Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 03F84518B6D
	for <lists+devicetree@lfdr.de>; Tue,  3 May 2022 19:48:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240651AbiECRvi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 May 2022 13:51:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41216 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240638AbiECRvh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 May 2022 13:51:37 -0400
Received: from mail-yb1-xb2f.google.com (mail-yb1-xb2f.google.com [IPv6:2607:f8b0:4864:20::b2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8F81227B04
        for <devicetree@vger.kernel.org>; Tue,  3 May 2022 10:48:04 -0700 (PDT)
Received: by mail-yb1-xb2f.google.com with SMTP id h10so3346782ybc.4
        for <devicetree@vger.kernel.org>; Tue, 03 May 2022 10:48:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=947aJh+pEr7uhg5BlGb1rh+bcGKYp8loqMrGOoU6w+4=;
        b=pOThmmz3gT39SJAqdfBILVMTCusmdZvvKsw9+CzaPlDdFRIo2Ft4figC5DBltX3RrB
         yPKSy8haYbn6qrNUA6/llov9aUz7WTayVoZIfgJePmVMqOjK+O3cW/GojkgJf6zydMeQ
         0o9kzWF9HFgze8tfygDe9vcXWhTYS6VNJaTVEkhB6y4Cg6FnBDc45OZZ49vSXdLn2u32
         rSm28eYdGBykW9luNRSiqDg2m1v/i8dF5/sXuuMqaz8fjzfpSxvdWs9AUGDteyOxZriE
         3/mEoJlldELZj9fS79bosJyDogCKhFE7cmFvZehjRVgiISUlUZoSyMuKX+GCz61UxAdA
         HW3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=947aJh+pEr7uhg5BlGb1rh+bcGKYp8loqMrGOoU6w+4=;
        b=D4coZfF1kR6wXc+Vd7FgXucav2cibNPhKxC7Yx292/oOsmSvoYXCfhxCGBN2nQivem
         z6/EChZ9qtmu+FPnml2JWLgOzCk12cmrDXSot7N8thzhdArJzHxjiHkXMuQPSQ7by2Vf
         QHokgZGrZNKRZxcLOUVjSF8M8Qjdx1I+aedNnH0DzTiqNH+tB0tIenL5tlPiHZRqS9yi
         ihZOGuSkmyrTXb6mTCp50kmDUZiPwqqwOM3/pEi9YlAzuJKmCkg/IYp79fPDU66lZqBC
         wbPzirLC5xQ25JwJ9dBHl2fU7nqxQM/4qx9zRkpskE5sL58zT/+ZJb3uZM5yY0lFBG/l
         RLqg==
X-Gm-Message-State: AOAM531C3Deuymekvg5ib8/HYJW0tAlXTXOold9eEEJboRVAYzGzx2Jw
        RqCJmo5ztOeSAjIG6+PulRsQN1I68EqG3PARrFjV2A==
X-Google-Smtp-Source: ABdhPJzm0YF1sjSAAUj4xHDlO7MHxP4AMo9zj4md3lb8ZyaxQHD1hXlwpadeStLd+hwdUUADfHcnsqYtnekDKXX7NY4=
X-Received: by 2002:a25:cfd7:0:b0:648:4e70:a98 with SMTP id
 f206-20020a25cfd7000000b006484e700a98mr15208721ybg.368.1651600083819; Tue, 03
 May 2022 10:48:03 -0700 (PDT)
MIME-Version: 1.0
References: <20220503130448.520470-1-robert.foss@linaro.org>
 <20220503130448.520470-7-robert.foss@linaro.org> <YnFlzOxrjrfBaaSs@builder.lan>
In-Reply-To: <YnFlzOxrjrfBaaSs@builder.lan>
From:   Robert Foss <robert.foss@linaro.org>
Date:   Tue, 3 May 2022 19:47:53 +0200
Message-ID: <CAG3jFytoV=nAzp8YQmHO6ypEYFy02i1nxAxfodaDuFRzX0UnGA@mail.gmail.com>
Subject: Re: [PATCH v2 7/8] dt-bindings: clock: Add Qcom SM8350 DISPCC bindings
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     agross@kernel.org, mturquette@baylibre.com, sboyd@kernel.org,
        robh+dt@kernel.org, krzk+dt@kernel.org, jonathan@marek.ca,
        tdas@codeaurora.org, anischal@codeaurora.org,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 3 May 2022 at 19:26, Bjorn Andersson <bjorn.andersson@linaro.org> wrote:
>
> On Tue 03 May 08:04 CDT 2022, Robert Foss wrote:
>
> > From: Jonathan Marek <jonathan@marek.ca>
> >
> > Add sm8350 DISPCC bindings, which are simply a symlink to the sm8250
> > bindings. Update the documentation with the new compatible.
> >
> > Signed-off-by: Jonathan Marek <jonathan@marek.ca>
> > Reviewed-by: Rob Herring <robh@kernel.org>
> > Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>
> This is missing your S-o-b as well.

Ack
