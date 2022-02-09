Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C07EA4AEFFD
	for <lists+devicetree@lfdr.de>; Wed,  9 Feb 2022 12:33:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229823AbiBILdl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Feb 2022 06:33:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34134 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229517AbiBILdl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Feb 2022 06:33:41 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3340EE148626
        for <devicetree@vger.kernel.org>; Wed,  9 Feb 2022 02:25:55 -0800 (PST)
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com [209.85.218.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id AE13F3F17B
        for <devicetree@vger.kernel.org>; Wed,  9 Feb 2022 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1644402353;
        bh=i2KI5hMSSyeIYLLHODdHiXGfEoepYgSQjsAA0Z52iOo=;
        h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
         To:Cc:Content-Type;
        b=cHy/gcYuNa4aV5WtsXg6UHbTzStbmAI6AOs0V2LeKkJ8WichnkXKjSTGR+hXNF61z
         oT9Mtr49CYXfCI7jwAoKhF0tutaLF5OtnoVGFVXEUk25tDmRzoCt4SSBJe6QODkAYk
         oIgkYQZdkBNmf9L6g6ZX8AtLW9B5wzug8hvoisGZJe4Rflzsc5xYA6i3Fug3Y+wBg4
         odnLjUKiZe2pu2LHoFLbFtHpaxmi9YqAhCrcMN3s3pJVMWbZWyWqs3Ml8dLVh1GUnW
         2VmNXPpqMtiwLwdqBtx+SGWGb811IAKgOCbKLCG9Lc+qtXZu2FN4tuDULE9ELelntw
         2lHjSlISeJJNg==
Received: by mail-ej1-f72.google.com with SMTP id d7-20020a1709061f4700b006bbf73a7becso959802ejk.17
        for <devicetree@vger.kernel.org>; Wed, 09 Feb 2022 02:25:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=i2KI5hMSSyeIYLLHODdHiXGfEoepYgSQjsAA0Z52iOo=;
        b=4f5NCPLDg2Gq+WLRVZkmldVCrmOtxgxlISXOs6U5sMvmBNmBIDdskEAnZ34r29mTfu
         NwMLVzdBHRVr+paRrdNXMF5cKdPxjaJGa9pxpKJAw0zEBpqCI/NVz6EV7KmKcq56lh9E
         kgAc3u2t3bsA2SOgWMeUOV2GLpRFUMZH/eXHHe6bKDJgYNoH4T3u/1v4eU/1NScDS9F9
         NNFU7BpXaPXIhO/QFUCzW4crYDQAlMqO+yypDq4G1vGnVN/nTBlLNnbZporfRckGfdbB
         srPGzrEuFeAkTthS7mV0WHaIesqdZVp+fCcjd441nnU7LcJVuYv99tzXvhCSDH3h7r3y
         8/mQ==
X-Gm-Message-State: AOAM531V+g1zN6ASijKVtpeee9SwtyeHLSXat2SQiSXN4MV55bU3aTkC
        Y6p6vhG2j/04QX6uG3G/fyOQoHhdywyLfaiECYO9BYPYJO/QoOBjxfC4kKbiCiK4uPFj6yusukB
        Yl/PMNhCkN5jkl3tmcwbMRqswh17N3OFi5rPUpvcnnNiFLX5eWCZYd64=
X-Received: by 2002:a17:907:1c1c:: with SMTP id nc28mr1295630ejc.651.1644402352732;
        Wed, 09 Feb 2022 02:25:52 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzRaSoiC+XlrvlLAdpRn5m2h3uJb8sozRIUppuILQY5sQ+ZHYc6VwQrATFbYHecvSmkHWdwQvCCJZlalnZpyhA=
X-Received: by 2002:a17:907:1c1c:: with SMTP id nc28mr1295621ejc.651.1644402352590;
 Wed, 09 Feb 2022 02:25:52 -0800 (PST)
MIME-Version: 1.0
References: <20220209101439.1657557-1-clabbe@baylibre.com>
In-Reply-To: <20220209101439.1657557-1-clabbe@baylibre.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Date:   Wed, 9 Feb 2022 11:25:41 +0100
Message-ID: <CA+Eumj7sWb9JCi4MzRj0bkBBD9LjsVBuZwimen11uLNapK73CA@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: rk3288: fix a typo on crypto-controller
To:     Corentin Labbe <clabbe@baylibre.com>
Cc:     heiko@sntech.de, robh+dt@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 9 Feb 2022 at 11:14, Corentin Labbe <clabbe@baylibre.com> wrote:
>
> crypto-controller had a typo, fix it.
>
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> ---
>  arch/arm/boot/dts/rk3288.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
> index aaaa61875701..a0d29de3acf7 100644
> --- a/arch/arm/boot/dts/rk3288.dtsi
> +++ b/arch/arm/boot/dts/rk3288.dtsi
> @@ -971,7 +971,7 @@ i2s: i2s@ff890000 {
>                 status = "disabled";
>         };
>
> -       crypto: cypto-controller@ff8a0000 {
> +       crypto: crypto-controller@ff8a0000 {

This should be rather "crypto" as a generic name (see list of examples
for generic naming in DT spec).

Best regards,
Krzysztof
