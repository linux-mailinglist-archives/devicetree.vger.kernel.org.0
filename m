Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D784E5EC2F
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2019 21:05:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727076AbfGCTFH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Jul 2019 15:05:07 -0400
Received: from mail.kernel.org ([198.145.29.99]:39380 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726473AbfGCTFH (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 3 Jul 2019 15:05:07 -0400
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id A63B0218A6
        for <devicetree@vger.kernel.org>; Wed,  3 Jul 2019 19:05:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1562180706;
        bh=ZVMs6id3mPq/QIZ1KW174w4yBPuFTMf/hjam7k1jXFI=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=1ZL7dmDJM1/kPi/yEhOoj0pJDP9lb+BdsSzL/8zWG13wfI26AcNk7KfdKWO6pd1p4
         r9wpKwBlIhAmZSpALzHqZQnFDBMXYKib9cy6A1hmlcbxXrjIxTec3LmEswJAI+QDcW
         i5QIL9pbecmEEj283ElfOj1gAwGewx3NRzJjNrPE=
Received: by mail-qt1-f177.google.com with SMTP id w17so1974473qto.10
        for <devicetree@vger.kernel.org>; Wed, 03 Jul 2019 12:05:06 -0700 (PDT)
X-Gm-Message-State: APjAAAXtJT8eGMULV8Dql3DkOPhzYSP5rj5EsiX0bTnEbaNEy6E0n3S0
        rn6Ic9z8/43AsN1rnOqxpKpmuoSj+HwwzqYwmg==
X-Google-Smtp-Source: APXvYqypWf/5ykAWU7UvqfFogAiDRydfSYoh1jZH2Fm0V2WCmnq5zVliwZzmOReUDyvGyCsJCeVeHitP8HfEJo4HqiQ=
X-Received: by 2002:a0c:acef:: with SMTP id n44mr34340113qvc.39.1562180705919;
 Wed, 03 Jul 2019 12:05:05 -0700 (PDT)
MIME-Version: 1.0
References: <20190703095421.11798-1-maxime.ripard@bootlin.com>
In-Reply-To: <20190703095421.11798-1-maxime.ripard@bootlin.com>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Wed, 3 Jul 2019 13:04:53 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+fqJe5_H80xwimsjueVCEwxbNa2sVQCAg=RjD-n1VfXA@mail.gmail.com>
Message-ID: <CAL_Jsq+fqJe5_H80xwimsjueVCEwxbNa2sVQCAg=RjD-n1VfXA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: nvmem: SID: Fix the examples node names
To:     Maxime Ripard <maxime.ripard@bootlin.com>
Cc:     Mark Rutland <mark.rutland@arm.com>,
        Frank Rowand <frowand.list@gmail.com>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jul 3, 2019 at 3:54 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> Now that the examples are validated, the examples in the SID binding
> generates an error since the node names aren't one of the valid ones.
>
> Let's switch for one that is ok.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> ---
>  .../devicetree/bindings/nvmem/allwinner,sun4i-a10-sid.yaml    | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Reviewed-by: Rob Herring <robh@kernel.org>
