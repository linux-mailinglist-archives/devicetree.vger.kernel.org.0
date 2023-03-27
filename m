Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8B8226CB0B4
	for <lists+devicetree@lfdr.de>; Mon, 27 Mar 2023 23:31:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232241AbjC0VbF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Mar 2023 17:31:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46136 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229608AbjC0VbD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Mar 2023 17:31:03 -0400
Received: from mail-yw1-x1132.google.com (mail-yw1-x1132.google.com [IPv6:2607:f8b0:4864:20::1132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A657E19AF
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 14:31:02 -0700 (PDT)
Received: by mail-yw1-x1132.google.com with SMTP id 00721157ae682-54601d90118so39754347b3.12
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 14:31:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679952662;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NmWC1eVyie5Yd9L3xoTIr177pdrcFqgDVTeu1P94+OM=;
        b=pVKD6LEJFp7WgyILxH4elBUH7BddDV0rnX5GeAOxhBgopm9E/nzk3MhCWpEh1c3yZV
         YW+ooglmkrhUTi7384C9A4k9F7sFyBMcYV+U1Zh4fE4oH4swk/h9RpExNy6eUCFNir7s
         zhCoJifC4d6TCGU+en3dp7TH6oZab1Suv+kksElkWJ/y64jyphwJM96xhWMoo5JrxURC
         bmNcZUTXTMKVmB0edURJOoKy0Ddt9eiUrJuATyim42dkPYWb99VxPt0FxN2A72XPNsQU
         Mbv+wTyIa7RqCdPkeJLkc1uv2BUVrFZzjWK5ngv0nZPoHKdEZGvm/pqewbZ1CfXfoKsJ
         F5Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679952662;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NmWC1eVyie5Yd9L3xoTIr177pdrcFqgDVTeu1P94+OM=;
        b=QMmpneTGN3w6lv7+GswTG+D8R1daVvDplWp1G3huxuGdxbptxtp4WO5xulFApEShcL
         s5tevaMnsA9hy8vyGE5GKQz22qCjx7kXNoWW4vw1EPy3ZLSW4PZMq5mnyV7EAMZciV6s
         7c7C2w5uDlzfMo2xnUQKKu4BelMbgJ4nF7z18eAcqFJINB9mevQmnY3rigN3FHydf+40
         kyRs7zdsPLSFKj1ka3Dj9fIvqaRoPvFlPReRm0WmD5hlF/GlUgWubxNnNhkIJGZxIQeU
         yU4loWrkqXZRYZ8Oj23F35/otIT0CoNH25SadiDZ6FUH+POXEI56V7N3pwyTrGT6Jq8V
         7OuA==
X-Gm-Message-State: AAQBX9dGA5JVRjSrfSvBaKabs+9T9e4umZkAuVh/9vgGXTw8kavBovf3
        zc+WUyqtWWza2TDq4SELoTc2qOEJlYOUPZBT57prvA==
X-Google-Smtp-Source: AKy350a4hxJBmWI3s3k33APAz6KOE7IC6my3ZU8xLd+GcwS8CRbKaqz6iujdIe4v7DlrVDyP9zFORE3kJZvLlhEs7Ao=
X-Received: by 2002:a81:d007:0:b0:546:81f:a89e with SMTP id
 v7-20020a81d007000000b00546081fa89emr521762ywi.9.1679952661937; Mon, 27 Mar
 2023 14:31:01 -0700 (PDT)
MIME-Version: 1.0
References: <20230327170146.4104556-1-robh@kernel.org>
In-Reply-To: <20230327170146.4104556-1-robh@kernel.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 27 Mar 2023 23:30:50 +0200
Message-ID: <CACRpkdatY4U0cwXB-fRBat_E6JXpC+ihExUiDC2UZUxSqcS9gg@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: timer: Drop unneeded quotes
To:     Rob Herring <robh@kernel.org>
Cc:     Daniel Lezcano <daniel.lezcano@linaro.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Linus Walleij <linusw@kernel.org>,
        Imre Kaloz <kaloz@openwrt.org>,
        Krzysztof Halasa <khalasa@piap.pl>,
        Thierry Reding <thierry.reding@gmail.com>,
        Jonathan Hunter <jonathanh@nvidia.com>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-tegra@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Mar 27, 2023 at 7:01=E2=80=AFPM Rob Herring <robh@kernel.org> wrote=
:

> Cleanup bindings dropping unneeded quotes. Once all these are fixed,
> checking for this can be enabled in yamllint.
>
> Signed-off-by: Rob Herring <robh@kernel.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
