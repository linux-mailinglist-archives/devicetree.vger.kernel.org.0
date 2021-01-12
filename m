Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2CF5F2F260C
	for <lists+devicetree@lfdr.de>; Tue, 12 Jan 2021 03:07:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727311AbhALCHe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Jan 2021 21:07:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46872 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727284AbhALCHe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Jan 2021 21:07:34 -0500
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com [IPv6:2607:f8b0:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B2C5DC061786
        for <devicetree@vger.kernel.org>; Mon, 11 Jan 2021 18:06:53 -0800 (PST)
Received: by mail-pl1-x636.google.com with SMTP id t6so562894plq.1
        for <devicetree@vger.kernel.org>; Mon, 11 Jan 2021 18:06:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:content-transfer-encoding:in-reply-to:references
         :subject:from:cc:to:date:message-id:user-agent;
        bh=GIDoXKYlEAG3wJcmSh2QD6Dl+3tRhU7sh26TJCJiovU=;
        b=fZSrlQE5Czl6y24R37175v/ad/BWklRKIjVXH4w+C35U0KKt/WnmwSfBI7jJNBu0qJ
         Td2sXj1BPeuugnPFaiSe/XgbV7FRoo9U//Ji0TpjGBr4Ahv6DAyVOC3MAZ9y8UiRNZyu
         0w3HdvwlSIdphY5qKtZLMg0INCL11FTk3OffU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:content-transfer-encoding
         :in-reply-to:references:subject:from:cc:to:date:message-id
         :user-agent;
        bh=GIDoXKYlEAG3wJcmSh2QD6Dl+3tRhU7sh26TJCJiovU=;
        b=N8n7jZw7ogExz7/04fh89G52Awszc31qO+8zN++ON01Zk/w/GYVWAKSPTVRK8sW8VA
         kbqmHcCf4Y8IZNIGYILxRiJ27KoCDX5m2lONExM47CbMjkDNMhImZO5COrWAAsFdi/TG
         cn4mlYieu/vINfWdFdqtsuuKak/23Nd+n9AAEn8m1B4M80cW+BZl2r/hDufziA3pkJ3k
         FpsqpKSjeQGFVLBZTrzwC8rKzbJa6dPVGkf0KwzgOxlI6fZm1a5QV3DBw8tMBWx5p4/S
         TTxmotE8ncDb1N/5c4Ai3ojWQBU+x/mAA1GpQqjqx+3Iy8nf8ek+MN5/UPSRLlq5TJ6X
         ezDQ==
X-Gm-Message-State: AOAM531bcs8rqDrKJm477lOI7jFtaG6t/fE+VRyRUEsbBrtaR7NuGPds
        pnrPjNEr1BaMS9ppWUKWOo/Hrg==
X-Google-Smtp-Source: ABdhPJz8G0WHssT6pGTKBVu6ir2bZ5ULf2huQlGToUEv6IpvhCTE0xdj9eGku0Qjg8e4A4ploQPW6A==
X-Received: by 2002:a17:902:9a86:b029:dc:104:1902 with SMTP id w6-20020a1709029a86b02900dc01041902mr2346259plp.50.1610417213356;
        Mon, 11 Jan 2021 18:06:53 -0800 (PST)
Received: from chromium.org ([2620:15c:202:201:3e52:82ff:fe6c:83ab])
        by smtp.gmail.com with ESMTPSA id 7sm954053pfh.142.2021.01.11.18.06.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Jan 2021 18:06:52 -0800 (PST)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20210108172316.v4.1.Iaa8a60cf2ed4b7ad5e2fbb4ad76a1c600ee36113@changeid>
References: <20210108172316.v4.1.Iaa8a60cf2ed4b7ad5e2fbb4ad76a1c600ee36113@changeid>
Subject: Re: [PATCH v4 1/2] dt-bindings: input: Create macros for cros-ec keymap
From:   Stephen Boyd <swboyd@chromium.org>
Cc:     dianders@chromium.org, Philip Chen <philipchen@chromium.org>,
        Benson Leung <bleung@chromium.org>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Guenter Roeck <groeck@chromium.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
To:     LKML <linux-kernel@vger.kernel.org>,
        Philip Chen <philipchen@chromium.org>,
        dmitry.torokhov@gmail.com
Date:   Mon, 11 Jan 2021 18:06:50 -0800
Message-ID: <161041721050.3661239.13956511794723234229@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Philip Chen (2021-01-08 17:23:31)
> In Chrome OS, the keyboard matrix can be split to two groups:
>=20
> The keymap for the top row keys can be customized based on OEM
> preference, while the keymap for the other keys is generic/fixed
> across boards.
>=20
> This patch creates marcos for the keymaps of these two groups, making
> it easier to reuse the generic portion of keymap when we override the
> keymap in the board-specific dts for custom top row design.
>=20
> Signed-off-by: Philip Chen <philipchen@chromium.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
