Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C31C9AEBDD
	for <lists+devicetree@lfdr.de>; Tue, 10 Sep 2019 15:45:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732978AbfIJNpM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Sep 2019 09:45:12 -0400
Received: from mail.kernel.org ([198.145.29.99]:56458 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1732960AbfIJNpM (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 10 Sep 2019 09:45:12 -0400
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 7285B20863
        for <devicetree@vger.kernel.org>; Tue, 10 Sep 2019 13:45:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1568123111;
        bh=nBe8ICZ0enU7XBIgqOSrJo8O4pfJiw8NDacIpLJhmNI=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=rRZUeAcr0x8QZSkhpHMqSykUgulW4Qli7XUzPnOLsorz8LUqzSmj4X5fW3Ictsp9E
         mTanZAbqy6PDDGGLRdhsZUqd5NG6g1oUHVq0kBqEKU88B7H+KkX5TQ3GpTMEmZK/yU
         u7o7GAb4T4H8boIpwMND6HFrn9C7IQY2xRz52h+I=
Received: by mail-qk1-f171.google.com with SMTP id 4so17034930qki.6
        for <devicetree@vger.kernel.org>; Tue, 10 Sep 2019 06:45:11 -0700 (PDT)
X-Gm-Message-State: APjAAAXUDL2tU9dHtVV/c4wq+sizsAAJJfvmI0OnfidjsJmurS7arPII
        H3obOlASBbwZa0Z4FsZSQQw9vFVTAmPxmyp/pA==
X-Google-Smtp-Source: APXvYqwFF7p9aUI2Cw5lINruuh6vjXtWyrLblVexE8RdkaBs6bO/4jUTbQ3q7k5ZD2CNEOFHj9YxzTWKdz/6NRZfI38=
X-Received: by 2002:ae9:e212:: with SMTP id c18mr29700455qkc.254.1568123110686;
 Tue, 10 Sep 2019 06:45:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190909175930.5026-1-GNUtoo@cyberdimension.org>
In-Reply-To: <20190909175930.5026-1-GNUtoo@cyberdimension.org>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Tue, 10 Sep 2019 14:44:59 +0100
X-Gmail-Original-Message-ID: <CAL_Jsq+MgA2vYWVEqwa7onwVfs6rvhxXUK1-9JBTS=hZsdokfg@mail.gmail.com>
Message-ID: <CAL_Jsq+MgA2vYWVEqwa7onwVfs6rvhxXUK1-9JBTS=hZsdokfg@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: arm: fsl: Add the Kobo Aura H2O Edition 2
To:     "Denis 'GNUtoo' Carikli" <GNUtoo@cyberdimension.org>
Cc:     devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Sep 9, 2019 at 6:59 PM Denis 'GNUtoo' Carikli
<GNUtoo@cyberdimension.org> wrote:
>
> The Aura H2O Edition 2 is an e-reader made by Kobo.
>
> Signed-off-by: Denis 'GNUtoo' Carikli <GNUtoo@cyberdimension.org>
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
>  1 file changed, 1 insertion(+)

Acked-by: Rob Herring <robh@kernel.org>
