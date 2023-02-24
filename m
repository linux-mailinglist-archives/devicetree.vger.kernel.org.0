Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 773D56A1965
	for <lists+devicetree@lfdr.de>; Fri, 24 Feb 2023 11:03:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230048AbjBXKDd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Feb 2023 05:03:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43922 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230005AbjBXKDL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Feb 2023 05:03:11 -0500
Received: from mail-vs1-xe29.google.com (mail-vs1-xe29.google.com [IPv6:2607:f8b0:4864:20::e29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5D87E168A6
        for <devicetree@vger.kernel.org>; Fri, 24 Feb 2023 02:02:36 -0800 (PST)
Received: by mail-vs1-xe29.google.com with SMTP id o6so21021073vsq.10
        for <devicetree@vger.kernel.org>; Fri, 24 Feb 2023 02:02:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=rQ+c56zWKAB6KkNwyl4wfURLw4xEI4TvXfEXVR7fScM=;
        b=mBf0fYdRBib48fcz8dVMkxRqv5dmT7j+KcKi6TQXWv47/sBOnplVjUA/KJlyaJhQ/u
         MUR8SPGjgkC8cTh1fdFKb3e7FHSM8YWB+6bJw3n9E66VgUJL5kFFtsaamzBOoG2BENuh
         trKPvAePy3rIQUhrjjvPeTuEOOm0WiZHCi6nI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rQ+c56zWKAB6KkNwyl4wfURLw4xEI4TvXfEXVR7fScM=;
        b=GWLOXDjHJ/eHdKQ2JomMBhAgEEnN865quv/UApC1blVjbWniow77j/vGIhsVG/QShV
         R2Ycg6+xKfAwohaDE8WDtuDx4HlTf9lNtGmYLPhudYf0OI0uAhQNa/RfkbXlxJUHDuVE
         QUY4giljr35+rcC00p263WSYFAG6pNJpmalRC/+Lv0URQW8ISmbKucrDp30GYt6xgoRf
         267D6Y8EKDNeNhTPPIPEexUDBySMLoU95Njm9Z3XZQ6h7CZJXzgu6ZQg4GaIHM4qnXzp
         R4U67fP51eZdggYQIEO6OEkKl5Yklwe0gP6lGxrT19iWmJLg9gwhPpy6bu8Rqp3W2GXO
         06EA==
X-Gm-Message-State: AO0yUKU+8t0v2olpt6OveuiojP8HQ2xA+h5NPzW/qy9TyizMUoQ+D87e
        w0aF7Epm9bVnqQHwSfJB4ViYcvVmK4CBXWcho7q5SQ==
X-Google-Smtp-Source: AK7set9tS5Vg40qoFVl+YV3ZHnpGsg0FDitUcAkWfOL/lB0uJsb2dhWG1E7jYLg/T5T3JyAWuVyzhJYudWUCfyfHK1U=
X-Received: by 2002:a05:6102:31a9:b0:415:48dd:e0b9 with SMTP id
 d9-20020a05610231a900b0041548dde0b9mr2020384vsh.3.1677232953844; Fri, 24 Feb
 2023 02:02:33 -0800 (PST)
MIME-Version: 1.0
References: <20230223134345.82625-1-angelogioacchino.delregno@collabora.com> <20230223134345.82625-16-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20230223134345.82625-16-angelogioacchino.delregno@collabora.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Fri, 24 Feb 2023 18:02:22 +0800
Message-ID: <CAGXv+5ES6MnmL0dhumwamHDVhcbeJ10UEO=98-SnWgWzzyHBCg@mail.gmail.com>
Subject: Re: [PATCH v2 15/16] arm64: dts: mediatek: mt8195-cherry: Enable
 Mali-G57 GPU
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     matthias.bgg@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
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

On Thu, Feb 23, 2023 at 9:44 PM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Enable the Mali-G57 found on this platform with the open-source
> Panfrost driver.
>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
