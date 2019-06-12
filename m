Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 13C4E429AD
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2019 16:44:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732089AbfFLOoi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jun 2019 10:44:38 -0400
Received: from mail-pf1-f193.google.com ([209.85.210.193]:36922 "EHLO
        mail-pf1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727846AbfFLOoi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Jun 2019 10:44:38 -0400
Received: by mail-pf1-f193.google.com with SMTP id 19so8966322pfa.4
        for <devicetree@vger.kernel.org>; Wed, 12 Jun 2019 07:44:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=message-id:mime-version:content-transfer-encoding:in-reply-to
         :references:to:from:cc:subject:user-agent:date;
        bh=bn95yZEQkFdm8IUCbmAacr/m8l86WxEth291aVhdSlM=;
        b=IFX91dVs/IB2uQK3729zPrJd1Knz4V7aZ3QpOygS7GTDRBVhMj7KbxcyEvtjveJJR1
         FXZzSv8Kt22j9edDD5+tQeVuKivqBejTI61b0MqQYaxytVcPL75KotXQ6tlJj2UeUYG6
         wmvi++xeRnLF6l4+9zP3EmyJCLQ4PU2nvxyJw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:mime-version
         :content-transfer-encoding:in-reply-to:references:to:from:cc:subject
         :user-agent:date;
        bh=bn95yZEQkFdm8IUCbmAacr/m8l86WxEth291aVhdSlM=;
        b=qtiDNTSMqMlYJFbnHEZIIIHFKB+AQSJX0dUYFHfs5pw/nl3XVzlmwLXJ0yR+xAVN1d
         mTOu9X/YOUVKjWz3FZm2J79IdaRihGLqxnm48VFC6XudknZTBeRqoCTCELEZQGELrmdS
         L77Wyvm1nv4thhrRY1+aTFobxyg+1EqwJHb7fi2aZ7nSD8IZygdyCC47hArmjh++Y/qn
         Kw+6g6nlYtrk9Gj17nt+Q6BUNMIJqBIry18dMrcf0mfvuHmy6ncwfl1tL3ocnoj6YahM
         4URr/FelUX7Ds4E//2eIuKCWgJjPL1tGhIaCfAgAbV6he+EYrsfJJ62+nYveI7pljR0d
         dWZw==
X-Gm-Message-State: APjAAAW0nmDMEsz8wNA7AWx2cGwmgTeQRojqo4/8IcJnwkulghQVD6de
        CegZhb5OPZ1kzbUnRE3zhCiRjg==
X-Google-Smtp-Source: APXvYqw1pRLfvl+MD405r1Flh6E/r+OXWy06xK5xfjFjE5fHv/YEJIPlfXeLmPTH94Oncwk11xcypA==
X-Received: by 2002:a62:5487:: with SMTP id i129mr82578482pfb.68.1560350677533;
        Wed, 12 Jun 2019 07:44:37 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
        by smtp.gmail.com with ESMTPSA id c133sm21450858pfb.111.2019.06.12.07.44.36
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Wed, 12 Jun 2019 07:44:37 -0700 (PDT)
Message-ID: <5d010fd5.1c69fb81.e7b77.87ae@mx.google.com>
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20190612010011.90185-1-wangkefeng.wang@huawei.com>
References: <20190612010011.90185-1-wangkefeng.wang@huawei.com>
To:     Kefeng Wang <wangkefeng.wang@huawei.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
From:   Stephen Boyd <swboyd@chromium.org>
Cc:     Kefeng Wang <wangkefeng.wang@huawei.com>,
        Rob Herring <robh@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Subject: Re: [PATCH next] of/fdt: Fix defined but not used compiler warning
User-Agent: alot/0.8.1
Date:   Wed, 12 Jun 2019 07:44:36 -0700
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Kefeng Wang (2019-06-11 18:00:11)
> When CONFIG_OF_EARLY_FLATTREE is disabled, there is a compiler warning,
>=20
> drivers/of/fdt.c:129:19: warning: =E2=80=98of_fdt_match=E2=80=99 defined =
but not used [-Wunused-function]
>  static int __init of_fdt_match(const void *blob, unsigned long node,
>=20
> Move of_fdt_match() and of_fdt_is_compatible() under CONFIG_OF_EARLY_FLAT=
TREE
> to fix it.
>=20
> Cc: Stephen Boyd <swboyd@chromium.org>
> Cc: Rob Herring <robh@kernel.org>
> Cc: Frank Rowand <frowand.list@gmail.com>
> Signed-off-by: Kefeng Wang <wangkefeng.wang@huawei.com>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>

