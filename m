Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 24F4C14AB68
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2020 22:03:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726080AbgA0VDV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Jan 2020 16:03:21 -0500
Received: from mail.kernel.org ([198.145.29.99]:46802 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726049AbgA0VDV (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 27 Jan 2020 16:03:21 -0500
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com [209.85.222.174])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 7D08620CC7
        for <devicetree@vger.kernel.org>; Mon, 27 Jan 2020 21:03:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1580159000;
        bh=FWwkAkZVEiuu+tHM/k6I8TrILIdJNPPExXRlkBK6BtY=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=KVEzgSc4osdt+EjJUZ36Zw4Yij8/16j5gb2wci6rHNDms5eSXaJgdyprcrc7kdfpU
         4WB2aYvXoOyiRnVn6zpwjkzVCTVegYZ0fuJtJzCvo/+OY2LYW83AKiBBmHn142Dqsa
         xgS0BTLVGxEtxcDBovkmQWeSODlKHaSN2kiyOtUs=
Received: by mail-qk1-f174.google.com with SMTP id x1so11101777qkl.12
        for <devicetree@vger.kernel.org>; Mon, 27 Jan 2020 13:03:20 -0800 (PST)
X-Gm-Message-State: APjAAAUWxjR5nWjyPKhgg/P2qivo6/0NHSQC9KQaMR5o85GuxE73JM5X
        ChXsyTeoyt74imgTz4dDYhHCNa7V9iPKYGs8ow==
X-Google-Smtp-Source: APXvYqwUkjwVHJDnk2TcEVcHVmAW978NwymYsuodgKSNOTWoc57/SMk6z75ttQ/IrFjO8YTmTwSozspKyyvXwSpD1xw=
X-Received: by 2002:a05:620a:9c7:: with SMTP id y7mr18482453qky.393.1580158999658;
 Mon, 27 Jan 2020 13:03:19 -0800 (PST)
MIME-Version: 1.0
References: <cc60bccb-883f-2efd-ead1-4dd1af10c3fa@linaro.org>
In-Reply-To: <cc60bccb-883f-2efd-ead1-4dd1af10c3fa@linaro.org>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Mon, 27 Jan 2020 15:03:08 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+vw2-xfNzFSt1HWqzZ4jObJgs-VNK6N4vnpZAgN4NVYQ@mail.gmail.com>
Message-ID: <CAL_Jsq+vw2-xfNzFSt1HWqzZ4jObJgs-VNK6N4vnpZAgN4NVYQ@mail.gmail.com>
Subject: Re: Splitting the thermal.txt file into different schema
To:     Daniel Lezcano <daniel.lezcano@linaro.org>
Cc:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jan 27, 2020 at 12:46 PM Daniel Lezcano
<daniel.lezcano@linaro.org> wrote:
>
>
> Hi Rob,
>
> while reading the documentation to convert the thermal.txt [1] into a
> yaml schema, the documentation says "Generally, there is one binding
> defined per file.".
>
> Shall I split the thermal.txt file into smaller one-binding based file like:
>
>  - thermal-sensor.yaml
>
>  - thermal-zone.yaml
>
>  - cooling-device.yaml
>
>
> ?

I think that looks right. The bulk of it would be thermal-zone.yaml.
For cases of provider/consumer bindings like thermal-sensor, those are
sometimes split between consumer and provider too. It depends if we
include the common provider schema in each provider. We probably don't
here given it's just #thermal-sensor-cells and we have to define that
in each provider anyways.

Rob
