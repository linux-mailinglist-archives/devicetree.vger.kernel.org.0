Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A9EBE1F5150
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2020 11:42:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727833AbgFJJmM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Jun 2020 05:42:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47290 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727101AbgFJJmM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Jun 2020 05:42:12 -0400
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E401C03E96B
        for <devicetree@vger.kernel.org>; Wed, 10 Jun 2020 02:42:11 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id a9so1640228ljn.6
        for <devicetree@vger.kernel.org>; Wed, 10 Jun 2020 02:42:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=L6IM8HZkBTsTCtJCNJrWL83PXKs3jC9VH6grLKGicZQ=;
        b=ginlMGioWdNyYUtlQPRf2HXg4R51WjeoOdKcIOGEPmCEun2SAlBkFK4AvudGvS5dtu
         mcU5Gu9F4mr+CXgz/+DtawHStRUwOEmLfddyQ/M0fQPRfHBXO9tWXYKcXduraDiP2GHf
         nNOoWY6woHlbOLUe8vm1k/8QE/vWRMC11ai2WkEdy20sTcJGNr+0V/Gk7AKs2LWVnFS8
         cIl4apzdWwWmENuaX/JnjnNG7Ww7lU2KDI2ZZqA2aHiP9YyvB2rGB/k8JFeZ+DKElbAo
         jYe9F97RvJXV44rhQSSPcpcuYxCKDSSBO5FOc76iWb0cM1dPtuPACPo+QJL+w4n9iZp5
         duSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=L6IM8HZkBTsTCtJCNJrWL83PXKs3jC9VH6grLKGicZQ=;
        b=Kgd2Ns4yLpZqgSe1NEvhQ4eeTl5QF+sT6RDtqZ/3MSuNb1tDgAEQUxXP6d3ohnUMuZ
         EkFUtt/Gin/4qs+5gNLO19lOJV78ryg2+draPQ8Xs/zxZgpDUx6f8p2KDf05aUw54Tj7
         mZgV9rXgufMu409f14ZjhNhP3SqhyVbVEVKlCPal53fImZuSjii/qDqyrPQ56V2lFyON
         0X6xbtI1q5elJ1XK5eCjgjxHA9MS/eRFVFcJQWhv876N6liGxh3O9yWm2cNd5t2jE+MQ
         dxJYg0bP7ND49rILTJYaEdfjKXR9DiDQ+RdSEEVzDxl3sJ32Gt9XY1pfsvT5wZCyfSHP
         fEzA==
X-Gm-Message-State: AOAM531G6WWsrMRu7R1hErRmmSntp9QmQFdbVlBVJezdsA5RZJMlXkci
        ow2EyyHZkjbxGBbK3qmUYc62zFZGLWIRnrB1SkrRoA==
X-Google-Smtp-Source: ABdhPJxoXuTFk1is/RO31yyyl5TxCVVZ0c+U2ViqAP54c/q3iqGbZn3p/7J7Ck85VUJCcikAOmvYyaaUzgoVKURdnk4=
X-Received: by 2002:a2e:974a:: with SMTP id f10mr1341404ljj.283.1591782129924;
 Wed, 10 Jun 2020 02:42:09 -0700 (PDT)
MIME-Version: 1.0
References: <20200605224403.181015-1-sebastian.reichel@collabora.com> <20200605224403.181015-2-sebastian.reichel@collabora.com>
In-Reply-To: <20200605224403.181015-2-sebastian.reichel@collabora.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 10 Jun 2020 11:41:59 +0200
Message-ID: <CACRpkdbx2kRjxhWzfFDHKojY0Yyour2+BCSVeqWHyoT5LhAwtw@mail.gmail.com>
Subject: Re: [PATCHv2 1/6] dt-bindings: power: supply: gpio-charger: convert
 to yaml
To:     Sebastian Reichel <sebastian.reichel@collabora.com>
Cc:     Sebastian Reichel <sre@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Emil Velikov <emil.velikov@collabora.com>,
        Daniel Mack <daniel@zonque.org>,
        Haojian Zhuang <haojian.zhuang@gmail.com>,
        Robert Jarzmik <robert.jarzmik@free.fr>,
        Russell King <linux@armlinux.org.uk>,
        Linux PM list <linux-pm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        kernel@collabora.com,
        Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Jun 6, 2020 at 12:44 AM Sebastian Reichel
<sebastian.reichel@collabora.com> wrote:

> Convert the gpio-charger bindings from text format to
> new YAML based representation.
>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Looks good to me, if it passes the checks:
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
