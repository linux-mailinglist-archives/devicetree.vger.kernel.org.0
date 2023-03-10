Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7FC6E6B38C9
	for <lists+devicetree@lfdr.de>; Fri, 10 Mar 2023 09:33:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230290AbjCJId5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Mar 2023 03:33:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46364 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230444AbjCJIdu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Mar 2023 03:33:50 -0500
Received: from mail-yw1-x1133.google.com (mail-yw1-x1133.google.com [IPv6:2607:f8b0:4864:20::1133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9945B22CAF
        for <devicetree@vger.kernel.org>; Fri, 10 Mar 2023 00:33:37 -0800 (PST)
Received: by mail-yw1-x1133.google.com with SMTP id 00721157ae682-53916ab0c6bso84352957b3.7
        for <devicetree@vger.kernel.org>; Fri, 10 Mar 2023 00:33:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678437217;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SMpbnSHIcPFt/I1d/CqEt8qhkTKrGkj3atI3VEs4HcI=;
        b=SJoxs05E/8Prfo6PVKGM6zZSWcMLWM31P3WBXQlcmDqPDjXNI7QTWJFRGxmhUWMHCj
         yk8hbMwGyVBiE0yKGtR7PVa0ngMJ+Or96yAEDdeXe/nUH1Jzku2sRyWqwXq+nOGGX04L
         NAl+8hpI9lifUh4+r+urQvfTklN9lUi/nU6lxMX5XUyvfN3FN7EDJqTrRv3rU64igw4e
         MExob/bm+V+iAZ85ux2Q6UbzCtZhDUMiyvuux7FMyWmEguXRQ8qnoAP/iHVqD4AhaZW0
         47Ob7dr/eo5BfUy+kFtfLNTMQopcDa7BjSP7AZnUYvtMhxrEApv7/Mz0ORDJlqKjFdq0
         z8oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678437217;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SMpbnSHIcPFt/I1d/CqEt8qhkTKrGkj3atI3VEs4HcI=;
        b=oivlEye7uYChmrXXU2m0xqJhvOzLv5KRkgPgbZfL7JjcRCk5+fb7GVg1CmzdHTFZpg
         c0Pyelo2/vONCz43u5QSvgq7ZqmI848JFR3IQHqi+6FuGxK6QvUvSG/m5Bczhsnu8+u9
         9e+vx4+XMRcToDAhIKS2jY0cPABi8KLEh1WVdeXh9jzi9IQkUbpeSeHPfuHcO2AON1Jw
         A4e4vIt1VzFRY2IUWrnIb84gkNcXYrmGMMkCgzJjlJZSWR9IpQ8rX+tdsNuBqXsSKkbW
         wAj/ftbp/mnihplDE6leLKqAmnHvGCtLHw+FakcOAZegb87qRVQitdDZqsFvx7hZ3fRt
         ZcJA==
X-Gm-Message-State: AO0yUKWwIUKuHkQmfWkD5dlYf1CGkLP7vijlvDOE7sA0hZTl53TcNJvx
        8KuN1flKL/N73uGnl2e/M8s9bwXRQugkdco1sofiDg==
X-Google-Smtp-Source: AK7set8Qj+8aPt8h/RLD9ek8d48Jja9NNhB5XAxVbtMUb9r6uvOpjnqFTpZc3oOuISORK9B1GdEyW326clAbqgwfgHk=
X-Received: by 2002:a0d:dbca:0:b0:533:9d13:a067 with SMTP id
 d193-20020a0ddbca000000b005339d13a067mr905175ywe.3.1678437216839; Fri, 10 Mar
 2023 00:33:36 -0800 (PST)
MIME-Version: 1.0
References: <20230309225041.477440-1-sre@kernel.org> <20230309225041.477440-12-sre@kernel.org>
In-Reply-To: <20230309225041.477440-12-sre@kernel.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 10 Mar 2023 09:33:25 +0100
Message-ID: <CACRpkdYEWDXT7DBFLbH4PYGAm4y6h7VoXQHDnFUkt+cQ58r3uQ@mail.gmail.com>
Subject: Re: [PATCHv1 11/11] power: supply: generic-adc-battery: update
 copyright info
To:     Sebastian Reichel <sre@kernel.org>
Cc:     Matti Vaittinen <mazziesaccount@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Mar 9, 2023 at 11:50=E2=80=AFPM Sebastian Reichel <sre@kernel.org> =
wrote:

> jz4740-battery.c and s3c_adc_battery.c have been removed
> from the tree and after all of my restructuring the driver
> is basically no longer based on them.
>
> Thus update the copyright information and switch to SPDX
> license identifier while being at it.
>
> Signed-off-by: Sebastian Reichel <sre@kernel.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
