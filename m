Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C8D1062F534
	for <lists+devicetree@lfdr.de>; Fri, 18 Nov 2022 13:42:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241159AbiKRMmS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Nov 2022 07:42:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54210 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241762AbiKRMmR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Nov 2022 07:42:17 -0500
Received: from mail-ua1-x932.google.com (mail-ua1-x932.google.com [IPv6:2607:f8b0:4864:20::932])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E588D8CFD1
        for <devicetree@vger.kernel.org>; Fri, 18 Nov 2022 04:42:14 -0800 (PST)
Received: by mail-ua1-x932.google.com with SMTP id y24so1462677uaq.3
        for <devicetree@vger.kernel.org>; Fri, 18 Nov 2022 04:42:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=lR6xTYRY7MgkfHig5h9+QBVHckUH85lhudbs/NLAfWU=;
        b=aSWpS3mKYDiCnOkBIsX+22S6pBFOEOgidnAmfkAVD+J2aGHAvlVyr5NsEQISwtWry1
         s714L0cDxT4dIUjWZ26hqjYEf41F0jlvnyFp3tmJ+tNGIkqwsF0iBSgiBwzirjV8BEFW
         3OsAZhXsf6/XNSUVkenujcjaqGH7kB0ROyfh79OYDAtjK3Jm/c1cXe/6Buoo5C9VLBTW
         QTUzrWzvhC+ZRVSCHdEwXukGYQ2Pnl5w8H9OFaw90jnI5qRNpQ9ew6Y/cVB00RwbOUe+
         IJoBozL1RkfQkEbQe4e8BiHKWg6EyHiu/2DORvSGYtSNyYqtTBtjS9s0aLxJZv5sP1Nk
         WfQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lR6xTYRY7MgkfHig5h9+QBVHckUH85lhudbs/NLAfWU=;
        b=XqNs1OyUfUtM/eOqHrIWrewIyGdEWWLu0qOuPpzx1DAJhKydoRSJGlHPstHjf0nkbx
         iUP+R4WTfnW04T4IZ8Ob6u8e2LjIUN0rSsla0TfKWk7V1JLwPENBx4OFeXj1jwHBiVLC
         lArQnnqkxXS9q1auCL3BPGE1qlKRoKYBgz2Dgif595NYOHbONDE3hVBIZYuazgz8WxAz
         kkCD/ihKJctvzmCrTcoCm4Sjg6x9efx4H5uxADIsni/cYZUt9j1AuV7kz4tfgzqN73Z2
         qvkdNpq5QixT/IJNvJpbjh4rRJBXPOHBpmYPhAKqar/OQKRJ565Y6qyXuG3wfjFw9ePK
         eurw==
X-Gm-Message-State: ANoB5pkKcSECceNSHz4KdbrymGGTCo0nDJ/iLV1SxHgTzA+hCoPMsjx1
        2IxSp82gsDPF69hmaGIB1PjNKPrlNCqOTa2Uwp2kdA==
X-Google-Smtp-Source: AA0mqf7mGBV/TWyE4B8wNnzY/00pkB9i2ya3rMZZIkqwL+3LlYjws14OhWdWW2FOvqapZnlxd62JQdHqdYPgEw1XNiY=
X-Received: by 2002:ab0:6caa:0:b0:409:a03b:1bbb with SMTP id
 j10-20020ab06caa000000b00409a03b1bbbmr3840981uaa.55.1668775333718; Fri, 18
 Nov 2022 04:42:13 -0800 (PST)
MIME-Version: 1.0
References: <20221117114818.v7.1.If7926fcbad397bc6990dd725690229bed403948c@changeid>
 <20221117114818.v7.2.I9e018ecb8bdf341648cb64417085978ff0d22a46@changeid>
In-Reply-To: <20221117114818.v7.2.I9e018ecb8bdf341648cb64417085978ff0d22a46@changeid>
From:   Guenter Roeck <groeck@google.com>
Date:   Fri, 18 Nov 2022 04:42:02 -0800
Message-ID: <CABXOdTfB9DA1LX3qj4QiHdTuJwV_OnP3eUEyTUvHzX3L3jnkNA@mail.gmail.com>
Subject: Re: [PATCH v7 2/3] dt-bindings: mfd: Add DT compatible string "google,cros_ec_uart"
To:     Mark Hasemeyer <markhas@chromium.org>
Cc:     LKML <linux-kernel@vger.kernel.org>,
        Raul Rangel <rrangel@chromium.org>,
        Bhanu Prakash Maiya <bhanumaiya@chromium.org>,
        Benson Leung <bleung@chromium.org>,
        Guenter Roeck <groeck@chromium.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        chrome-platform@lists.linux.dev, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        USER_IN_DEF_DKIM_WL,USER_IN_DEF_SPF_WL autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Nov 17, 2022 at 10:49 AM Mark Hasemeyer <markhas@chromium.org> wrote:
>
> Add DT compatible string in
> Documentation/devicetree/bindings/mfd/cros_ec.txt
>

This is now google,cros-ec.yaml

Guenter

> Signed-off-by: Bhanu Prakash Maiya <bhanumaiya@chromium.org>
> Signed-off-by: Mark Hasemeyer <markhas@chromium.org>
> ---
>
> Changes in v7:
> - No change
>
> Changes in v6:
> - No change
>
> Changes in v5:
> - No change
>
> Changes in v4:
> - Changes in commit message.
>
> Changes in v3:
> - Rebased changes on google,cros-ec.yaml
>
> Changes in v2:
> - No change
>
> ---
>  .../devicetree/bindings/mfd/google,cros-ec.yaml       | 11 +++++++++++
>  1 file changed, 11 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml b/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
> index 04962bb29576e..26787e4574b8d 100644
> --- a/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
> +++ b/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
> @@ -28,6 +28,9 @@ properties:
>        - description:
>            For implementations of the EC is connected through RPMSG.
>          const: google,cros-ec-rpmsg
> +      - description:
> +          For implementations of the EC is connected through UART.
> +        const: google,cros-ec-uart
>
>    controller-data:
>      description:
> @@ -222,4 +225,12 @@ examples:
>              compatible = "google,cros-ec-rpmsg";
>          };
>      };
> +
> +  # Example for UART
> +  - |
> +    uart0 {
> +        cros-ec {
> +            compatible = "google,cros-ec-uart";
> +        };
> +    };
>  ...
> --
> 2.38.1.584.g0f3c55d4c2-goog
>
