Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 20BA541A5DE
	for <lists+devicetree@lfdr.de>; Tue, 28 Sep 2021 05:11:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238756AbhI1DND (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Sep 2021 23:13:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36332 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238750AbhI1DNC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Sep 2021 23:13:02 -0400
Received: from mail-io1-xd2a.google.com (mail-io1-xd2a.google.com [IPv6:2607:f8b0:4864:20::d2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 27814C061575
        for <devicetree@vger.kernel.org>; Mon, 27 Sep 2021 20:11:24 -0700 (PDT)
Received: by mail-io1-xd2a.google.com with SMTP id h129so25587173iof.1
        for <devicetree@vger.kernel.org>; Mon, 27 Sep 2021 20:11:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=XuGbdg+gsHbV7O5CNejxioP978DSZm31BG3mqStkBKU=;
        b=glOYWIb+kPr6poS9nJDxJ7OEs9a4B1m9r04FTq3frBJawoX6sMYOh7YdAuu4iAho7g
         1i0q+oux8Jrim5JKr2do1o97ehP8ojORYNlGzcyYthV7MfigkiDkpBqAZOZf0LAUUq8A
         DOkGdMBN/NSh8iPG8aJEDAxn4ile5uC0nyIM2faWYt3msvOyMl3FmhboSn0JQb6dnpay
         saDeij1VcMV9h7GAdti16G/gVSdSdQdJ8DvihatsO++TuksP+W5E06Qe43uBR5XPaJL6
         mIvo5R6M1/URbD8eTGIhVIHBwp1IEdlIY8/qZVk4X7WnJhvCNYxsItR8dLjqGR476suf
         9tlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=XuGbdg+gsHbV7O5CNejxioP978DSZm31BG3mqStkBKU=;
        b=Cp1Qg7Xf6LSr3MI8yG2c9a1rBoOSuQ1tqZv+ExEzijhZ5M9Zg9W+tCjo1PyjMf52as
         vqQ/BZaORWStUsrrGAaK4EbGhQ+uyNzT6s0C6GHSb66AiXzSqoN1ZVqtOB8M25oHO8gT
         yqJCQvjmolA26xsN7QRWt0QMEQuYQP6wctwImG0e2NXxksmUWQWYyq1m/uWfi6rKhLfr
         z7dC75wJXCpNa3UiiacCRRNOmFMkpJ/vfjWPtE9RoL53PpZsvXiwC7x9hJG+Bpnf9CIR
         AXNaxSCkak8+rT2+D1u9nEosEYrNqRZ0CAFxJE64E11ffgQQlgZeuD8QFRQ47kdDYpfx
         WhxA==
X-Gm-Message-State: AOAM533EEwxtwnTZE9f3aLGA+OKCnZy0JBTm3NK6lK+nAM43CJFz6KW7
        6Bc2pbOEaZnNFVsr5iXnV2KnIUUAqTBtKvzFBUiCngFTI8qM9w==
X-Google-Smtp-Source: ABdhPJztbIdBK74nPlWGOLzoJIo0XlHNyUzjluIXtP+os7Nwv4kU+yxTO9uusIiA6j0jpGe4WJXNmRIoz8RFa4X6Y3M=
X-Received: by 2002:a5e:c74c:: with SMTP id g12mr2283939iop.41.1632798683207;
 Mon, 27 Sep 2021 20:11:23 -0700 (PDT)
MIME-Version: 1.0
References: <20210928030343.2200141-1-tzungbi@google.com>
In-Reply-To: <20210928030343.2200141-1-tzungbi@google.com>
From:   Tzung-Bi Shih <tzungbi@google.com>
Date:   Tue, 28 Sep 2021 11:11:12 +0800
Message-ID: <CA+Px+wUgG5im=Ds=rb64EFUYPWy0hfSWUiELk_1j_wFyCVk=-w@mail.gmail.com>
Subject: Re: [RESEND PATCH v4] ASoC: dt-bindings: mediatek: mt8192: re-add
 audio afe document
To:     broonie@kernel.org, robh+dt@kernel.org
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Sep 28, 2021 at 11:03 AM Tzung-Bi Shih <tzungbi@google.com> wrote:
>
> The document was merged as commit 1afc60e00de3 ("dt-bindings:
> mediatek: mt8192: add audio afe document").
>
> However, [1] revealed that the commit 1afc60e00de3 breaks
> dt_binding_check due to dt-bindings/clock/mt8192-clk.h doesn't
> exist.
>
> As a temporary fix, commit 7d94ca3c8acd ("ASoC: mt8192: revert
> add audio afe document") reverted commit 1afc60e00de3.
>
> dt-bindings/clock/mt8192-clk.h is in mainline per commit
> f35f1a23e0e1 ("clk: mediatek: Add dt-bindings of MT8192 clocks").
> Re-adds the document back.
>
> [1]: https://mailman.alsa-project.org/pipermail/alsa-devel/2020-November/176873.html
>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Tzung-Bi Shih <tzungbi@google.com>

Oops, forgot to include the changelogs to the patch.

Here are the changelogs:

Changes from v3
(https://mailman.alsa-project.org/pipermail/alsa-devel/2021-September/189705.html):
- Fix the indent errors.

Changes from v2
(https://mailman.alsa-project.org/pipermail/alsa-devel/2021-August/189058.html):
- Simplify the commit message.

Changes from v1
(https://mailman.alsa-project.org/pipermail/alsa-devel/2021-August/189048.html):
- Add more context to the commit message.
