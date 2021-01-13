Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 990AD2F5516
	for <lists+devicetree@lfdr.de>; Thu, 14 Jan 2021 00:06:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726198AbhAMXFS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Jan 2021 18:05:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58472 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729409AbhAMWkg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Jan 2021 17:40:36 -0500
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com [IPv6:2607:f8b0:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B63F3C061575
        for <devicetree@vger.kernel.org>; Wed, 13 Jan 2021 14:39:24 -0800 (PST)
Received: by mail-pl1-x635.google.com with SMTP id be12so1894427plb.4
        for <devicetree@vger.kernel.org>; Wed, 13 Jan 2021 14:39:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:content-transfer-encoding:in-reply-to:references
         :subject:from:cc:to:date:message-id:user-agent;
        bh=gh8rbttIouy/6SgRYtlbp+yCr9Aj2T9LalSbJ62Hzw0=;
        b=aqsVLG12WY5SVKk8ztS9n/LrwE79M0ulsj0CkzRH7CwZ7CciJj+5RT9jiGuVneRiP5
         aRRvTW5CPqEUWfpgeIP+chHk6qhzjV3q70jshCZiVcEMyQJqz4j7GLu5rF4jyKCbw6G7
         zQAIRi1Ju0yBerf3OiN5SpU8vXNjjh9P4E9ls=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:content-transfer-encoding
         :in-reply-to:references:subject:from:cc:to:date:message-id
         :user-agent;
        bh=gh8rbttIouy/6SgRYtlbp+yCr9Aj2T9LalSbJ62Hzw0=;
        b=W0597FV0/6Om0J6yhWZKO8ultPzjJ8FQX5Z0GYj0w023mqKOWfnjsLx8gKpV8YdfAw
         /9fVtDRVqgC8yiNO8PzwgIoNa3UvvjBOEr5Xq9iIImLRjrCQM8+69Vyqt5xOVHg4mpUv
         mtwuue9PlzCJDuCML8tReFgQdR6LIZ1uaIYKh5mrsypmxU7r61Opi3M2P1nyKhrKB25P
         DH9fTmU+VgqyE8G/ym3acXG2Q4ShUR4xXk1ixkHpsIZgifQdbgEgNTBHUhOjgpfA5WGe
         VbnF8aMN93eJt4iTS+8/Gbu+oYuhNkGjXk0TnApJXdJF6k2Gyp6si9DDs5qkXGnqf7lf
         yRqw==
X-Gm-Message-State: AOAM532BrdUmtpay2Zsug6+FQI2RTMCd5QZYJY1PMNWY281/tnZuoxRN
        XbkdCLfsiAhMK3zXjq2FTeiYKw==
X-Google-Smtp-Source: ABdhPJxZdWVLDt3uZDkJTFcJ8PFyFQeU3MsJ8ddVuDRk/eVp50Kq8uE8i8woOhxikahB8u3ZhhBiag==
X-Received: by 2002:a17:902:ba97:b029:db:f662:a547 with SMTP id k23-20020a170902ba97b02900dbf662a547mr4442619pls.68.1610577564332;
        Wed, 13 Jan 2021 14:39:24 -0800 (PST)
Received: from chromium.org ([2620:15c:202:201:3e52:82ff:fe6c:83ab])
        by smtp.gmail.com with ESMTPSA id p15sm3584031pgl.19.2021.01.13.14.39.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Jan 2021 14:39:23 -0800 (PST)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20210113141426.v5.1.Iaa8a60cf2ed4b7ad5e2fbb4ad76a1c600ee36113@changeid>
References: <20210113141426.v5.1.Iaa8a60cf2ed4b7ad5e2fbb4ad76a1c600ee36113@changeid>
Subject: Re: [PATCH v5 1/2] dt-bindings: input: Create macros for cros-ec keymap
From:   Stephen Boyd <swboyd@chromium.org>
Cc:     dianders@chromium.org, Philip Chen <philipchen@chromium.org>,
        Benson Leung <bleung@chromium.org>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Guenter Roeck <groeck@chromium.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
To:     LKML <linux-kernel@vger.kernel.org>,
        Philip Chen <philipchen@chromium.org>,
        dmitry.torokhov@gmail.com
Date:   Wed, 13 Jan 2021 14:39:22 -0800
Message-ID: <161057756231.3661239.9132526298211013930@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Philip Chen (2021-01-13 14:15:01)
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

You should carry forward Acks and Review tags when resending patches.
Rob acked the previous one.
