Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E8DA2664242
	for <lists+devicetree@lfdr.de>; Tue, 10 Jan 2023 14:49:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232868AbjAJNtZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Jan 2023 08:49:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42618 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231758AbjAJNtX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Jan 2023 08:49:23 -0500
Received: from mail-yw1-x112b.google.com (mail-yw1-x112b.google.com [IPv6:2607:f8b0:4864:20::112b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E3759395C7
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 05:49:20 -0800 (PST)
Received: by mail-yw1-x112b.google.com with SMTP id 00721157ae682-4b718cab0e4so154223917b3.9
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 05:49:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=44n3krIm8uSmD55/HyB5R1oD+31KNdGLUS6d9tW+5uQ=;
        b=vhotJ3I8QZ6o0V8YONaYaXj/HV/kecxNEMwtCEgE5GBsKWV9/ahydBnTXRAnAFB5vK
         8Bv6j4jmTFkIkqGKBBPhPgRL7BRLqCJOvxbslhuuqChHh8JOOx5pLG0chTHBkMvJPeKB
         qdOm+x5ISFro/dysaAH25bEr/7ioGKbFHDMGgXrqnyFn6KzeVadcw6Il64YiGxvXQFtN
         /aSz/JIfdGzF8RrcGELvdreEvNm0n2meScgUq5Qq+Tpw6xHF7XZMDlmFyKjWcdJua/0r
         2anEDx9JqN4Ia0rws2CoA8QRWKKpuHjh8Hi+8LKk54CBTcS0I0N50ZHMuD+mfOT77Gwg
         aFpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=44n3krIm8uSmD55/HyB5R1oD+31KNdGLUS6d9tW+5uQ=;
        b=i9hRFD+fF6NO2G2pPNkdfhH0EiMkYK/6Vl8RGBL9JCtPvE5pYLyq9v0heRCkWL0Wik
         ICp92O0tf4KhPyULqEiMvhPaWXWNdKzL3hi3t8zLbLP5L/mbL2GON0Ch5bF9diAOr93j
         +gMQdXmy5GgDN5j6lWckJS5WxLc80RSJr3/AbTFpTLZkscIS9+R2X4DbmG7nA04PJYFx
         nTwtyHBXae3YlOZe1kAR8Iz0Jmr/VcVrv51vcPDbbW1xewH5UTqhPD6o++GtvGOIUQks
         6O99OU0+cMB2l8lz+Agqbx5iGzbDZcFgsOHr1htlcLkd5e6qY+h3Kp7hSITk4heLrOmN
         C5BQ==
X-Gm-Message-State: AFqh2kqgJVA7Yyg7ukXxPVQ+xmFzlLb0+Mht60Jmi+p8WlhmhIhlaEs9
        2xhdMyLVi3fxVQvDwrl+C770iw5zCoBnwOLexxLc9Vj8BKgGZAZSHXyp3g==
X-Google-Smtp-Source: AMrXdXuYkD+ZZc5pD3tPvLUfmyEi/NTU0zo9Lq4D2HDlk7f1MnD0p57cz4H1Pn//2A9HF6YPoEBmOrcORSltK9HAqs4=
X-Received: by 2002:a05:690c:442:b0:3e9:59f3:200c with SMTP id
 bj2-20020a05690c044200b003e959f3200cmr1105726ywb.171.1673358560103; Tue, 10
 Jan 2023 05:49:20 -0800 (PST)
MIME-Version: 1.0
References: <20230109155801.51642-1-sebastian.reichel@collabora.com> <20230109155801.51642-2-sebastian.reichel@collabora.com>
In-Reply-To: <20230109155801.51642-2-sebastian.reichel@collabora.com>
From:   Jagan Teki <jagan@edgeble.ai>
Date:   Tue, 10 Jan 2023 19:19:09 +0530
Message-ID: <CA+VMnFzJwrvdY4CguWyhKZwjBqdq6bfkZdjJjsh8SLu6BcN5XQ@mail.gmail.com>
Subject: Re: [PATCHv8 1/7] dt-bindings: soc: rockchip: add initial rk3588
 syscon compatibles
To:     Sebastian Reichel <sebastian.reichel@collabora.com>
Cc:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Marc Zyngier <maz@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Christopher Obbard <chris.obbard@collabora.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, kernel@collabora.com,
        Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 9 Jan 2023 at 21:28, Sebastian Reichel
<sebastian.reichel@collabora.com> wrote:
>
> Add IOC and PHP GRF syscon compatibles for RK3588.
>
> Acked-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---

Reviewed-by: Jagan Teki <jagan@edgeble.ai>
