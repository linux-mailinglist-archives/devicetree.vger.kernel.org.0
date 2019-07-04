Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D0B785F409
	for <lists+devicetree@lfdr.de>; Thu,  4 Jul 2019 09:47:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726964AbfGDHpm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 Jul 2019 03:45:42 -0400
Received: from mail-lj1-f196.google.com ([209.85.208.196]:44642 "EHLO
        mail-lj1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726698AbfGDHpm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 4 Jul 2019 03:45:42 -0400
Received: by mail-lj1-f196.google.com with SMTP id k18so5151949ljc.11
        for <devicetree@vger.kernel.org>; Thu, 04 Jul 2019 00:45:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=VqIbRmpqLMGOAT/gnCMxZj540BB+nzZMlAbEvE7fDYw=;
        b=LaqgVE1ssRbhWRJYHPBJhjqh1E8z7JtSWBk911qy/D6r9hoZ3eK1gS+E0H4HqyNfo+
         X2d7vDwKXfMv1lslLTwS47ZIau/5Xn0/1EgFb2Rup+kBttMFiDvppkhRTITPthtcNJwj
         2kDGQBGwgicxgJSJlTRgCgbR+lMO6pGTpiGY5Dl1irjYQavim9ri6XiOh7HtXgUTV+q2
         qY+teMEzE0tgqp6rf674urI9PnH8HCyBhwie21kZy9Anw3Df+hVf83jSHwdaMBKy5iG+
         5BR2O7VurH+pRwKn6pW0JZ4IKVIsN35yPePp/ilP3wgAYhhb7LTFswtXr1ORP6PWbfNE
         WL6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=VqIbRmpqLMGOAT/gnCMxZj540BB+nzZMlAbEvE7fDYw=;
        b=oXUin116otQK9wDp6jC7SBOJvfz148Mi1vYFTq60YZr1pjbjURZJWWxkixEHO66Oly
         /n2poFRblcZPA+7O/4YEz7rJCW8s/hWKL4dOWs9OV1WHhQA+F6Wm0u8XjXG3KJR9k4jB
         2vUdoaX5segcsEyWAKD6by/OaxXJvtYguAh7t+ILcxaxA/tR6m/lMOAr7Mt8Fen61EEf
         gskZofGAESOd+Sm78/Il8lfPPCtLmDA1aNLrW9/lbql6CtdyNWDXAplsc0fLQalw0X0W
         nz40iUHZjqKrLaTxfMXDhae95UJdV3GaEqvvnyIzqM9HkjHy5qZKPWSrO2g29nHUOayy
         VGaA==
X-Gm-Message-State: APjAAAUBtArJe2M1jnm3VgJCV9MdqYWNZs8VhVXxNB8m+ATi/8qOjr7e
        GQxXTPRCg9F+zeD4B0jbic2JUWcyDCFjkUm4HdY92w==
X-Google-Smtp-Source: APXvYqyvGakK4ylSdsFrtpyn/uqOct9HbmkohFRyFJ5vpJo68nXnvqeMHK72Apyap33ZaUPwqSHgwe9f8bkEGi5kvxI=
X-Received: by 2002:a2e:a0d5:: with SMTP id f21mr24161474ljm.69.1562226340137;
 Thu, 04 Jul 2019 00:45:40 -0700 (PDT)
MIME-Version: 1.0
References: <20190702105045.27646-1-vkoul@kernel.org> <20190702105045.27646-2-vkoul@kernel.org>
In-Reply-To: <20190702105045.27646-2-vkoul@kernel.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 4 Jul 2019 09:45:28 +0200
Message-ID: <CACRpkdatEKYaZF1LEy-O4qfbBFeMQihp4m3Y5TmgBQcXA+v2qg@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: pinctrl: qcom: Document missing gpio nodes
To:     Vinod Koul <vkoul@kernel.org>
Cc:     MSM <linux-arm-msm@vger.kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jul 2, 2019 at 12:54 PM Vinod Koul <vkoul@kernel.org> wrote:

> The bindings for msm8998-pinctrl was missing gpio-ranges and
> gpio-reserved-ranges, so document them as well
>
> Signed-off-by: Vinod Koul <vkoul@kernel.org>

Patch applied with Bjorn's ACK.

Yours,
Linus Walleij
