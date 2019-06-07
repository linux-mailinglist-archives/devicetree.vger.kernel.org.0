Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 20BE439724
	for <lists+devicetree@lfdr.de>; Fri,  7 Jun 2019 22:59:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730351AbfFGU7L (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Jun 2019 16:59:11 -0400
Received: from mail-lj1-f194.google.com ([209.85.208.194]:35770 "EHLO
        mail-lj1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730242AbfFGU7K (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Jun 2019 16:59:10 -0400
Received: by mail-lj1-f194.google.com with SMTP id h11so2910294ljb.2
        for <devicetree@vger.kernel.org>; Fri, 07 Jun 2019 13:59:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=tEZvWJsFue7fCIY7RY9rcYSd3HaVbUE9nAN1OkAVWME=;
        b=zKZercwpsPXX2K9QFr6z2ZW0wE6hyQk4g2lpewtU9wiouEVRmpfzXJ2VygkU4n8H8m
         8c2xBCQWDSy8rslj7GVT82J32G1k5dUcZSQK2StFiSRstoq08PXTblGP+tmvyrO61A+b
         cUzpdTPsLrJAHqZWd9LirbPd3tNmwJh2c114GMeFGiCu6OtXeVfiaRHVKhr8sT78fYz+
         +y6Z2yxXoy/wbOz6++aYBeQN5aX6qabuor2J8GbgWvnRrA1Mh+zwhfAnqWcti2HlOolw
         MLOw7T6JSlZRCbJxHvpQnTmpwYKOZvuyJMa49Yu26JrfN22afylMLUQ6pAjek5Lq52u4
         YmjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=tEZvWJsFue7fCIY7RY9rcYSd3HaVbUE9nAN1OkAVWME=;
        b=p56O95c28fkJIPTjccjV+CyWBNmnOV52jheY8eJFdkoPeWPgGB2YaaL/XrUtJBa5am
         gSpQjUzr7fectKN8RRlUIV8wi4XyVmTatsNCQX1lODOcjCiJP6wW27W1nBBZHUrvC0uQ
         yKlmi14AxwmOJoKK7ZugvzB5LIRetb323SSISP+8gRMHhKbqUTEldApI5DYu+9X8KA14
         P0F+H0nEOgnnzcRCeLjbNEnoHBQg6R6k4IAdB3gnDvLiG3D56kqQy6rRFFjCisM9unmT
         Lww0WfS1m8ouxZLR2O8NcDcOVqxiA3j3X7gAdmWsMCB5DUAjWMQKoSDjJf6NLdtwFVst
         U0cA==
X-Gm-Message-State: APjAAAVj8exty9cBS2CTqEP0HY8FOZ0eBcLmdowBko6R+NC8JXeE+qTw
        jkDjYJyljQTRR+xi4GlEoFn9HS0bDjJ8Rv3fWjKrUg==
X-Google-Smtp-Source: APXvYqybb7KzOkDvVRauSyZjrruBmBWId2yXwpYH1HIMQi6UsJ2mD7CwnPWMbaLG8x56HQlC6vvpZipHjgVXHICJWec=
X-Received: by 2002:a2e:9753:: with SMTP id f19mr5258986ljj.113.1559941148941;
 Fri, 07 Jun 2019 13:59:08 -0700 (PDT)
MIME-Version: 1.0
References: <20190530031357.17484-1-Anson.Huang@nxp.com>
In-Reply-To: <20190530031357.17484-1-Anson.Huang@nxp.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 7 Jun 2019 22:59:01 +0200
Message-ID: <CACRpkdYmX3GRmXCuPe-zoQE6PEYr_TQruj_ymR3G_jBjtjrwpw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: imx: Correct pinfunc head file path for i.MX8MM
To:     Anson Huang <Anson.Huang@nxp.com>
Cc:     Dong Aisheng <aisheng.dong@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Shawn Guo <shawnguo@kernel.org>,
        Stefan Agner <stefan@agner.ch>,
        Sascha Hauer <kernel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        NXP Linux Team <Linux-imx@nxp.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, May 30, 2019 at 5:12 AM <Anson.Huang@nxp.com> wrote:

> From: Anson Huang <Anson.Huang@nxp.com>
>
> The i.MX8MM pinfunc head file is located in DT folder, correct it.
>
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Patch applied.

Yours,
Linus Walleij
