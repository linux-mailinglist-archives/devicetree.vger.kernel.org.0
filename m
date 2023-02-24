Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0D37A6A1940
	for <lists+devicetree@lfdr.de>; Fri, 24 Feb 2023 10:58:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229854AbjBXJ6M (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Feb 2023 04:58:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39106 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229481AbjBXJ6L (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Feb 2023 04:58:11 -0500
Received: from mail-vs1-xe33.google.com (mail-vs1-xe33.google.com [IPv6:2607:f8b0:4864:20::e33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7B315126D8
        for <devicetree@vger.kernel.org>; Fri, 24 Feb 2023 01:58:08 -0800 (PST)
Received: by mail-vs1-xe33.google.com with SMTP id v27so12751220vsa.7
        for <devicetree@vger.kernel.org>; Fri, 24 Feb 2023 01:58:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=EDHJK7PCQBx6L0iZv4CPd9HBFqqmGXlBJv6+kgrFacU=;
        b=oL19UenMCpOV6pa0xyeo6Y7yZge9bBDslkKDkzJo5E1gesVFErH0K6sXV82MZq0bqG
         aIceBOKnJjTAzG8mpqvDoAp0VtPt6eEKqYYCKR2Al8VsFLhuNJGDajyihntPJocNB2DX
         ObGsoi/XbXx5b/ji4LU29lQvfduveVXsIQLTM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EDHJK7PCQBx6L0iZv4CPd9HBFqqmGXlBJv6+kgrFacU=;
        b=hbS/98nFs3tI+fs9hNdSeJz8GqZhSGFZ1c0Hlulku0QgiYarroVMkS9pftsK+28OL1
         fLr4zmPUK374p5KKtz0XCsBdnCIY8xZUKn4Q5vhGKxkqc1aKqIZTJxT/rsQcoCRGB3dK
         FZ3e4NX25m9zzXArDNYaeN+ouuNKHn+xEuX3iLKcbfsgZwKJH6JOaIWSX9PlPFSxL2U+
         wdOYkRWkKVf4WoAMh6mJF1IVvmn1rh214iLT1K2wK8rCNwjjR7uZmmvwwufzbN4bqXCy
         VVrGu8vvdzhyrkkL17eZyVlxHpKTvsqgudVBpn32KLaxDgDihCV2LrelTeC+k2hkySTc
         PdwQ==
X-Gm-Message-State: AO0yUKXlKx3avqrUJlpkUkVld0uKV12hDo8eDJOp8slG6v29KyB54eec
        Kylc8/kKqQK8fRNMf4FLn7F1XoZXqzvZ4TDJ/zGMEg==
X-Google-Smtp-Source: AK7set8ySk174IvOPAfFf/U/t0BY8s+z1UpjOQThmLdmHOI8zTcs7XG1QV01MtzQ7FuxKIyGDqYBqfAiPp9X2FyzL7Q=
X-Received: by 2002:ab0:5550:0:b0:68a:a9d:13f5 with SMTP id
 u16-20020ab05550000000b0068a0a9d13f5mr4693072uaa.1.1677232687691; Fri, 24 Feb
 2023 01:58:07 -0800 (PST)
MIME-Version: 1.0
References: <20230223134345.82625-1-angelogioacchino.delregno@collabora.com> <20230223134345.82625-11-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20230223134345.82625-11-angelogioacchino.delregno@collabora.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Fri, 24 Feb 2023 17:57:56 +0800
Message-ID: <CAGXv+5HQfpdA3qART761WqRQ_nb_8fFtj8uEY=_WtpbxWc8TZA@mail.gmail.com>
Subject: Re: [PATCH v2 10/16] arm64: dts: mediatek: mt8192-asurada: Assign
 sram supply to MFG1 pd
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     matthias.bgg@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Feb 23, 2023 at 9:44 PM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Add a phandle to the MT8192_POWER_DOMAIN_MFG1 power domain and
> assign the GPU VSRAM supply to this in mt8192-asurada: this allows to
> keep the sram powered up while the GPU is used.
>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
