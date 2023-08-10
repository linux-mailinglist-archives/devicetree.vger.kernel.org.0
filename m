Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E21B77771F0
	for <lists+devicetree@lfdr.de>; Thu, 10 Aug 2023 09:54:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233238AbjHJHy4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Aug 2023 03:54:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40904 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233189AbjHJHyz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Aug 2023 03:54:55 -0400
Received: from mail-yw1-x1136.google.com (mail-yw1-x1136.google.com [IPv6:2607:f8b0:4864:20::1136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D81A0E4D
        for <devicetree@vger.kernel.org>; Thu, 10 Aug 2023 00:54:54 -0700 (PDT)
Received: by mail-yw1-x1136.google.com with SMTP id 00721157ae682-586a684e85aso8124857b3.2
        for <devicetree@vger.kernel.org>; Thu, 10 Aug 2023 00:54:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691654094; x=1692258894;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LtlymLNA8DDXiFEZ6qkyWTsNDDZ9bMQ7Xcy6MabS43o=;
        b=aqmbUr4GEMwGcGxIPuNAt18SEew4RcLqdSYgPqoy84NfjNwQsO2jN6GomHPpNf4aA/
         wuGzkCEyfViyejFREqEyMKy+lhQvnWtUDA8lgexOMHWgxex8SJecoPMBYHQ0SFyi1oSo
         Yl3UpnB+aGdydIRI2l/0h0o2/mOMHQAbBJ/9fxMCfEpXM4FLdaWjNVQGcErcVQVSKlHa
         myCMvflPxrhA0zDfBI7Ls7MEhzu4pdloZ/ypg++hKFYh7Gi8WvlXxs3x0/eK4cSUwkD8
         Fi/hX7CI0lNpsV/qOrDqqkPyUMxdUcZlBB4y77xQtqgQzbXhUsFKrgC3GF2FNgtqiJ4q
         my/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691654094; x=1692258894;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LtlymLNA8DDXiFEZ6qkyWTsNDDZ9bMQ7Xcy6MabS43o=;
        b=H4j49tJU9s3Hc4zrKxZasKyE3owzu6nVeMEkGHzOGKgiY8zbi9wqSnMiPapLE+TocM
         +HSFxsGDX+BuXmYH6CiDUpvGwSBNmI190gdG0I+xzFzuZanBkMzzEkwy24Vz1WbeJ7tA
         icDWTpuLFytFFzF/YFBgUi9pnyQde/P3idcn6CUTy7JFu+KYulMuqd49FGZQsmBM7Qxl
         t0iudlAgo5mk39aKOZQOum9WprH1gNbdc7veo6ThjEm2ddvuSqp/OoWl3F7r2I3f3Tgw
         zh+3rFkQiBxTKVHfXVhjRPctrS5odTFCzhQnNF6al31UMMmfH3pfxkrYdHgQ1TrMdhtq
         2Qsw==
X-Gm-Message-State: AOJu0Yw63lKACX5leg7UFlMm0YTKUKMmKFsD9ZewIskwUGFzDVO9T77D
        +FA5zJ9N2Qxs5hgWO+3zYdA3RgnqA/5DVc/3nDAS9A==
X-Google-Smtp-Source: AGHT+IEdxjOBOjoec+WaIE4q8w8QXHlpLX5c+lenELaRZHEzZyH9rf/PlyEjKcPuOytBnV0qSQguqgwx05dRMIqu/4M=
X-Received: by 2002:a25:ab72:0:b0:d62:b8d1:67e5 with SMTP id
 u105-20020a25ab72000000b00d62b8d167e5mr2020999ybi.7.1691654094172; Thu, 10
 Aug 2023 00:54:54 -0700 (PDT)
MIME-Version: 1.0
References: <20230720115524.137944-1-krzysztof.kozlowski@linaro.org> <20230720115524.137944-2-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230720115524.137944-2-krzysztof.kozlowski@linaro.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 10 Aug 2023 09:54:43 +0200
Message-ID: <CACRpkdYASsQ85n9M-CV_9nuy8YEuVzkTQF9KMPa2DrFXn2zP2g@mail.gmail.com>
Subject: Re: [PATCH 2/2] ARM: dts: st: href-tvk1281618: correct touchscreen syna,nosleep-mode
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jul 20, 2023 at 1:55=E2=80=AFPM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:

> There is no syna,nosleep property in Synaptics RMI4 touchscreen:
>
>   ste-hrefprev60-tvk.dtb: synaptics@4b: rmi4-f01@1: 'syna,nosleep' does n=
ot match any of the regexes: 'pinctrl-[0-9]+'
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Patch applied!

Yours,
Linus Walleij
