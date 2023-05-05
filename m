Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E44476F79E1
	for <lists+devicetree@lfdr.de>; Fri,  5 May 2023 02:03:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229767AbjEEADJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 May 2023 20:03:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33588 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229751AbjEEADI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 4 May 2023 20:03:08 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D87F7A5D6
        for <devicetree@vger.kernel.org>; Thu,  4 May 2023 17:03:07 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 7489460FD9
        for <devicetree@vger.kernel.org>; Fri,  5 May 2023 00:03:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DB82DC433D2
        for <devicetree@vger.kernel.org>; Fri,  5 May 2023 00:03:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1683244986;
        bh=RDWOTKEgSiLZsf5lSWQRTtLXfVJRh8xEl5DM4OjW1Cs=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=kAUxA0DE5hZgxfSQkN8CFu7flVAL6tF9975Xr2U09Q7fu8u0MzmFTZLAIE3VAUhX0
         XgX/ZjMZvniVlUJ1WfIvSVwz/8EAUJp0k/kCJ2AaHGO/4rROHSWQi6QM5ANAbMKtee
         OnX/reJYcG+rxUm+gLn5K6rMqpKhtRqPxsvPxA1yMKwtq1NTaqfB2Zu9YJ3r2SsdZz
         lL9iW8R+4G2glHovI7P/nsr4s/YCFfUsySE6lWqwHy6LpoZu9az7OIvpL4rfLQYxoS
         Soux/KlRhLCOX/mpbAib9rky0yOH82n/4JGaI1hPONKCfSmtHyi44E8/bptcoakyeI
         Sm565+VL0gisQ==
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-4eff4ea8e39so1308143e87.1
        for <devicetree@vger.kernel.org>; Thu, 04 May 2023 17:03:06 -0700 (PDT)
X-Gm-Message-State: AC+VfDzbh2+yq6zwIoVPpL6iJvlFKVFbMjzPSatzyJNnUXHrn8zH7YnU
        rHrfol/ZqZuXURZIxYareHwQsZevxgaw+EIJ7g==
X-Google-Smtp-Source: ACHHUZ6vT3fvZmUriDqlKYzuyc/JQFC0N1ceG2x0OlNAlpyCYn7Jf5M0quv1bK6dNNDQbzy5jNYayRRaACH4ZKpAqHs=
X-Received: by 2002:a05:6512:41a:b0:4ec:a9c5:f3ae with SMTP id
 u26-20020a056512041a00b004eca9c5f3aemr4900lfk.11.1683244984900; Thu, 04 May
 2023 17:03:04 -0700 (PDT)
MIME-Version: 1.0
References: <20230504-renderer-alive-1c01d431b2a7@spud>
In-Reply-To: <20230504-renderer-alive-1c01d431b2a7@spud>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Thu, 4 May 2023 19:02:52 -0500
X-Gmail-Original-Message-ID: <CAL_JsqLUj4b0fpV_6juoeQqBY83GezZNh-UTH9vmaFAyEVUzPw@mail.gmail.com>
Message-ID: <CAL_JsqLUj4b0fpV_6juoeQqBY83GezZNh-UTH9vmaFAyEVUzPw@mail.gmail.com>
Subject: Re: [PATCH v1] MAINTAINERS: add Conor as a dt-bindings maintainer
To:     Conor Dooley <conor@kernel.org>
Cc:     Conor Dooley <conor.dooley@microchip.com>,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-7.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, May 4, 2023 at 4:59=E2=80=AFPM Conor Dooley <conor@kernel.org> wrot=
e:
>
> From: Conor Dooley <conor.dooley@microchip.com>
>
> Rob asked if I would be interested in helping with the dt-bindings
> maintenance, and since I am a glutton for punishment I accepted.
>
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> ---
>  MAINTAINERS | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 4e9370793300..687d7a3d2e85 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -15697,6 +15697,7 @@ K:      of_overlay_remove
>  OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS
>  M:     Rob Herring <robh+dt@kernel.org>
>  M:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> +M:     Conor Dooley <conor+dt@kernel.org>

Do you really want '+dt'? I've never really used it, and I think it
suffers from the same issue as MAINTAINERS. It won't get used
consistently.

Rob
