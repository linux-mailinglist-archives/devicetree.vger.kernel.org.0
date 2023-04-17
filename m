Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 95F3C6E49F6
	for <lists+devicetree@lfdr.de>; Mon, 17 Apr 2023 15:33:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230274AbjDQNdL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Apr 2023 09:33:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59406 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230049AbjDQNdJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Apr 2023 09:33:09 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BCF2972BA
        for <devicetree@vger.kernel.org>; Mon, 17 Apr 2023 06:33:01 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id ud9so63957108ejc.7
        for <devicetree@vger.kernel.org>; Mon, 17 Apr 2023 06:33:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1681738375; x=1684330375;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZPiq0OVRi/FkSBkrx6r9kFVybHHOEdw9SmQm4viTMUc=;
        b=HmaGMEqlD0daDB1jKy5x8/I2mHUSTv5MdkMvVgod2xVcHLDQWpfmEUu5hvCJhlB+uY
         RBIBvON9ydZaIZ5A0hEF3/JnYamojfOZPaNv0Fnl4KtKLUlLAYOm41hAjOu/nHweOkU7
         ah61rYpdk630cG/aRRas7+JhiblpbDRVJQmKQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681738375; x=1684330375;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZPiq0OVRi/FkSBkrx6r9kFVybHHOEdw9SmQm4viTMUc=;
        b=W/NdfP6AUnVlLY9x62uKjaPvM0LB5LOFLeZXJHUtQLm75bZB3+sNwT3ZrRq0Axwbzm
         uNjrwTUAehfdQDX+BGOoyhaWfX/F7927+6pWhtqDTNvJW9OdKuTIhvXIXMYcWdv2kumP
         aBMquN7JSBVx79B/wJgkAUG1KSIr6jEMkBNvu5K6mudXMp747ODoA5+8erYlXRngC8/s
         lZp5pybpeXYfQUSsT1PBa+kJdcRC7J7McJ2NkMj1OTDhjOhdG2N4TRSyKINK/Erl0Stj
         nD0eTl+2nKqOywM37Jg2tougJxNdQcl3tZjxDJPf4P8INNRW9/vmVxm4NKAt/+kDNsNf
         18gA==
X-Gm-Message-State: AAQBX9d92C3ZYs0pENjgyszXEPhtc9YxJOXRn/WZeraENR+Xit+CX5ZA
        ZHxOiAr6at0v7OiMEWhc5IgFK+gto4SmSne+k2ubkA==
X-Google-Smtp-Source: AKy350ZzjPUz2h4qigxL59rfjw0d0maUo1wv20OwpPikwH6jp4gg9S+5S6QEt9Xcgp5m3FszaxGY+A==
X-Received: by 2002:a17:906:5210:b0:94a:56ec:7f12 with SMTP id g16-20020a170906521000b0094a56ec7f12mr8187172ejm.30.1681738375002;
        Mon, 17 Apr 2023 06:32:55 -0700 (PDT)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com. [209.85.128.46])
        by smtp.gmail.com with ESMTPSA id p20-20020a170906615400b0094aa087578csm6686538ejl.171.2023.04.17.06.32.53
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Apr 2023 06:32:53 -0700 (PDT)
Received: by mail-wm1-f46.google.com with SMTP id n43-20020a05600c502b00b003f17466a9c1so1205442wmr.2
        for <devicetree@vger.kernel.org>; Mon, 17 Apr 2023 06:32:53 -0700 (PDT)
X-Received: by 2002:a05:600c:2308:b0:3f1:6980:2d34 with SMTP id
 8-20020a05600c230800b003f169802d34mr1272021wmo.6.1681738373434; Mon, 17 Apr
 2023 06:32:53 -0700 (PDT)
MIME-Version: 1.0
References: <20230417123956.926266-1-treapking@chromium.org>
In-Reply-To: <20230417123956.926266-1-treapking@chromium.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Mon, 17 Apr 2023 06:32:40 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VoC2gK5MtBU9qhVxJwRRUGBMLT96UH7F+QKcmGEYo_sQ@mail.gmail.com>
Message-ID: <CAD=FV=VoC2gK5MtBU9qhVxJwRRUGBMLT96UH7F+QKcmGEYo_sQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: mt8173: Power on panel regulator on boot
To:     Pin-yen Lin <treapking@chromium.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Mon, Apr 17, 2023 at 5:40=E2=80=AFAM Pin-yen Lin <treapking@chromium.org=
> wrote:
>
> Add "regulator-boot-on" to "panel_fixed_3v3" to save time on powering
> the regulator during boot.  Also add "off-on-delay-us" to the node to
> make sure the regulator never violates the panel timing requirements.
>
> Signed-off-by: Pin-yen Lin <treapking@chromium.org>
>
> ---
>
>  arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi | 2 ++
>  1 file changed, 2 insertions(+)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
