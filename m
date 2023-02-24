Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AB6AC6A1922
	for <lists+devicetree@lfdr.de>; Fri, 24 Feb 2023 10:53:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229739AbjBXJxl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Feb 2023 04:53:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33710 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229722AbjBXJxk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Feb 2023 04:53:40 -0500
Received: from mail-vs1-xe2c.google.com (mail-vs1-xe2c.google.com [IPv6:2607:f8b0:4864:20::e2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A019F1205F
        for <devicetree@vger.kernel.org>; Fri, 24 Feb 2023 01:53:39 -0800 (PST)
Received: by mail-vs1-xe2c.google.com with SMTP id d20so13132683vsf.11
        for <devicetree@vger.kernel.org>; Fri, 24 Feb 2023 01:53:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=af4CYOZxGFEia2jFKISPbK0kpnOWXcsASd/qhVrqOvY=;
        b=a/BAa2AE8nY37LlE/Wvo0GMH81qnhvvJ4hkf4UwojYj7HWDi1KSJI7tFXozFbi4bri
         z0/CfyVurxEsbDgYeBDGU7IYtluwW4zbOgzCRdMnWF4RizdiUaEqpbiJm/xtmOr630So
         pOcPJ6MK6D1hkzidJhmEe8VHr/hqOn+dc/y+g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=af4CYOZxGFEia2jFKISPbK0kpnOWXcsASd/qhVrqOvY=;
        b=Uq1ZVucN1+gW9nNreLPRMw6gryFQVCKrd3mS2hA5hX1edQdbpbiCle9yVAEpeh64v3
         cSQcQkhhE3HZZ+/IB+lJQsIKlhwMSP3m23o8coiS3BvywtJbjTbNzbU3fZXlyv8f7y8t
         76Wn3gBdyuEs0bjX/rvDpb9SXFkfFLDXY/LDVAEG4m48I/akivKmM73Yv1wbl4smSZn2
         nJR4xxA0voFw/cZVO4Ak8yVUUkTRqmtxiksckP45g8DIOTUnDOyQIg3cjF3WIWqpVdhT
         zrE4odzGKpvxxIzZQgRzapA4EUaKOxQ8UVEEuS15Od7wQ08FnDyxzs1pm4n0FthwJqBC
         mpog==
X-Gm-Message-State: AO0yUKX7/fX/5GiKFPHIFl6xfsAqjpy1UZzK553lD2qEqN+0UZzEImMq
        F5Sj0rHgtILmTm5w6y4t+O4JCAZQRhPxVVIz6oZZAg==
X-Google-Smtp-Source: AK7set+KvF/SzOSrOq2zhkOe2oGFapubF4kOTt85lB+h7aclUTKhE3m2QERgreU6P9Zm6e3LDGw+xzWKT5klfU2qjGs=
X-Received: by 2002:a1f:bf16:0:b0:413:1498:e843 with SMTP id
 p22-20020a1fbf16000000b004131498e843mr1876592vkf.0.1677232418756; Fri, 24 Feb
 2023 01:53:38 -0800 (PST)
MIME-Version: 1.0
References: <20230223134345.82625-1-angelogioacchino.delregno@collabora.com>
 <20230223134345.82625-5-angelogioacchino.delregno@collabora.com> <CAGXv+5Eh62NFNW1T7PYiQe+9KD8qX2WB7M3rwrYD=ca872y3WQ@mail.gmail.com>
In-Reply-To: <CAGXv+5Eh62NFNW1T7PYiQe+9KD8qX2WB7M3rwrYD=ca872y3WQ@mail.gmail.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Fri, 24 Feb 2023 17:53:27 +0800
Message-ID: <CAGXv+5Ehm0yb+52m+DL8s99KqBqx7skPZ2xfMFMYVJ23CDsfHQ@mail.gmail.com>
Subject: Re: [PATCH v2 04/16] arm64: dts: mt8183-pumpkin: Couple VGPU and
 VSRAM_GPU regulators
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

On Fri, Feb 24, 2023 at 5:51 PM Chen-Yu Tsai <wenst@chromium.org> wrote:
>
> On Thu, Feb 23, 2023 at 9:43 PM AngeloGioacchino Del Regno
> <angelogioacchino.delregno@collabora.com> wrote:
> >
> > Add coupling for these regulators, as they have a strict voltage output
> > relation to satisfy in order to ensure GPU stable operation.
> >
> > Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
>
> Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>

Actually, maybe you should override the constraints here as well.
