Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7D1E7688FD1
	for <lists+devicetree@lfdr.de>; Fri,  3 Feb 2023 07:48:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232047AbjBCGrE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Feb 2023 01:47:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40026 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232662AbjBCGqj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Feb 2023 01:46:39 -0500
Received: from mail-vk1-xa36.google.com (mail-vk1-xa36.google.com [IPv6:2607:f8b0:4864:20::a36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BE1E58C41C
        for <devicetree@vger.kernel.org>; Thu,  2 Feb 2023 22:45:39 -0800 (PST)
Received: by mail-vk1-xa36.google.com with SMTP id l129so2114322vkh.6
        for <devicetree@vger.kernel.org>; Thu, 02 Feb 2023 22:45:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=DXxrQE0DVwanxphrseUxAjJiqhp6uGNf7pcWwsgpWEg=;
        b=nWROuR0pj1Pl1TSRysKSwzECG02ERncxdz5Du78MZoQovrXI7EnpmAXBHYV5IJbpU4
         NMvgfqCm5s1STqR13XA1OTJIeUbSOpfB4XZ06Pv9JsGb8y1l23NZr2iCmtEjTorgnC+Z
         2JY5IQuTGFbBtjM9mVNKXtzsroj8K8xFseTYM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DXxrQE0DVwanxphrseUxAjJiqhp6uGNf7pcWwsgpWEg=;
        b=PtADqbd8Jyo0DYG8VvhWdTzw03hVZIjgCQ/E0gZwJ4zxcszNywiuEFusHAs/bUkui2
         b6nKZEplCPadvEZJkZfdZDuYL/T6PgRZoxCDhtHc/aMZ73gmOjNMSGs0A5KFS4K1itvc
         cb11V+GLW9Cdse4Z0xyR6ypv9l1ZjHZf89ve1V8056ISZuTp1kZavHIr7dH06TsxZ9YF
         9ySVKABYveZghbkJu5f8le1XA7ExvkOihdXJf7K7kXZ3du3n5jfvrhlbj8r9HptKgZ4Z
         azar7IU4ktSsB8d+rHW731Gqn6DHZC2dxItcrQyoi8kO3p8JZoVQ/Hh6j09Zb/lm8agL
         OvGw==
X-Gm-Message-State: AO0yUKWIJIBLWnS7vVMm3hDTb4ZEmR6A3yyuMbGGYU0VhHs060e0kpIL
        ZoYMJVNiRUeC5TVPf9d6zJAZIjld4qlNaToMORUuZw==
X-Google-Smtp-Source: AK7set9N7s5GDlQRAmXm5uyJjoUg5jz6AF6KZ8lCLWBstusXFXE/r5U/501lgDv8HqpdHYNuecgcaP+dbJ30rnvNNUU=
X-Received: by 2002:a05:6122:131:b0:3e8:8f:f3a7 with SMTP id
 a17-20020a056122013100b003e8008ff3a7mr1316397vko.30.1675406738947; Thu, 02
 Feb 2023 22:45:38 -0800 (PST)
MIME-Version: 1.0
References: <20230119124848.26364-1-Garmin.Chang@mediatek.com> <20230119124848.26364-5-Garmin.Chang@mediatek.com>
In-Reply-To: <20230119124848.26364-5-Garmin.Chang@mediatek.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Fri, 3 Feb 2023 14:45:28 +0800
Message-ID: <CAGXv+5GBG2Ehkth8atwueajdkdEGzb3UK5w8H4G98uRVd7U+Vw@mail.gmail.com>
Subject: Re: [PATCH v5 04/19] clk: mediatek: Add MT8188 peripheral clock support
To:     "Garmin.Chang" <Garmin.Chang@mediatek.com>
Cc:     Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>,
        Project_Global_Chrome_Upstream_Group@mediatek.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
        linux-clk@vger.kernel.org, netdev@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jan 19, 2023 at 8:51 PM Garmin.Chang <Garmin.Chang@mediatek.com> wrote:
>
> Add MT8188 peripheral clock controller which provides clock
> gate control for ethernet/flashif/pcie/ssusb.
>
> Signed-off-by: Garmin.Chang <Garmin.Chang@mediatek.com>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
