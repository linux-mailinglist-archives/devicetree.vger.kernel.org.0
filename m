Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 39B2E670B3F
	for <lists+devicetree@lfdr.de>; Tue, 17 Jan 2023 23:08:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229919AbjAQWH4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Jan 2023 17:07:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50286 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230156AbjAQWGT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Jan 2023 17:06:19 -0500
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C6DC4ABEE
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 12:45:51 -0800 (PST)
Received: by mail-ej1-x62e.google.com with SMTP id ss4so70982858ejb.11
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 12:45:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ihL4wd9bgg0XP72Mx30UbJj4Y5l/3v2lnIC1mu3yIzM=;
        b=MeUY0XkAuz6KNgchkIQhLxnVvHN8NQSQ1bXfSzywL1h8nsxv1aVnohPQkesabBVQ3o
         HEQLkUz/2cPkAoeGlZIgBiUX1VvprhI0dM7JwK2lbzlk+i79ZDbd/X3mxMvQr9g5R073
         Rw5kD4UmpXFJIWdn+Fwj3Kkw45NSaBjvj2sc3b+vS96iNZf2aM9gq96bZG2b5GHRUz8w
         j5TJvHa9ApyEAe7JtTI72LaVdyrFpBDHmNUFHX9fa8WGVQ5kEcRIARlVNZQdh+mkWK3A
         Ql4mN8Vfe8dK3fx+jsfNHcwmNgiLFWOHd278LxCKCK2v4tGbQcvr3BCyT08HGOKSD1qg
         I74g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ihL4wd9bgg0XP72Mx30UbJj4Y5l/3v2lnIC1mu3yIzM=;
        b=ihhuOLCUprw0qHH/0vyaXXVbQtFro4BUkHmbYjh3w4Z02ZzLhJX6YDRAQ0DCnreGab
         1tUzwnzawe0MONG26YSHvoyw6OdGdawKt5nGlasCIX80VFUZyxPde3YTYiX5LC0i6/jc
         T4E2YvEkBWfHYLYfZ4cFXE0hKXfJiRsEH7znjYM3N0g9AKx9CeK86qqnsiugnK1rO/t0
         P8T+aqOvwfWBg+HMdZSOVbIVKP/GI8XpbkLDadgGZ0IW6TDTR0095TXJWYd99aNnzts/
         LBx1F9d1SpOu0IWX3rI0KWlnhQN952FIHo7E8F3vR/wry0ZjgU/UsAT9vqZz1gUCKehI
         VpYg==
X-Gm-Message-State: AFqh2kqdjkH4a+uUf9zic88fU27Zjfo2C2RvglbRX6TBZRn+xtkNeKsu
        p2FuvZn6QIKApr/hIWH2Kw7bd5t7voXel1VbleA=
X-Google-Smtp-Source: AMrXdXti88KkQz7vl1Pg56JPd5XOUBWWph8cF2lAvc07qS7pQ2SUYzYXymWhbvmLvwR8QGuubv2uDe+SaBq1Hqidu+k=
X-Received: by 2002:a17:906:5658:b0:84d:4d82:1101 with SMTP id
 v24-20020a170906565800b0084d4d821101mr348296ejr.77.1673988349950; Tue, 17 Jan
 2023 12:45:49 -0800 (PST)
MIME-Version: 1.0
References: <8d960029-e94d-224b-911f-03e5deb47ebc@gmail.com>
In-Reply-To: <8d960029-e94d-224b-911f-03e5deb47ebc@gmail.com>
From:   Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date:   Tue, 17 Jan 2023 21:45:38 +0100
Message-ID: <CAFBinCD=RMR1Xv7+TKAqoipuNzA235Zf0oNH-xopUj2VEtV4tg@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: phy: g12a-usb2-phy: fix compatible string documentation
To:     Heiner Kallweit <hkallweit1@gmail.com>
Cc:     Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        linux-phy@lists.infradead.org,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jan 16, 2023 at 9:21 PM Heiner Kallweit <hkallweit1@gmail.com> wrote:
>
> The compatible strings in the driver don't have the meson prefix.
> Fix this in the documentation and rename the file accordingly.
>
> Fixes: da86d286cce8 ("dt-bindings: phy: meson-g12a-usb2-phy: convert to yaml")
> Cc: stable@vger.kernel.org
> Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
