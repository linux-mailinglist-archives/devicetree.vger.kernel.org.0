Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 97C34563195
	for <lists+devicetree@lfdr.de>; Fri,  1 Jul 2022 12:40:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235300AbiGAKjv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Jul 2022 06:39:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34098 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233394AbiGAKju (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Jul 2022 06:39:50 -0400
Received: from mail-yb1-xb35.google.com (mail-yb1-xb35.google.com [IPv6:2607:f8b0:4864:20::b35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C012F7B369
        for <devicetree@vger.kernel.org>; Fri,  1 Jul 2022 03:39:49 -0700 (PDT)
Received: by mail-yb1-xb35.google.com with SMTP id p7so3308216ybm.7
        for <devicetree@vger.kernel.org>; Fri, 01 Jul 2022 03:39:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=QhSJpdElfxLJFyuRKCFkIgo8J87kpfyiNf5gNwRrRdk=;
        b=ocasRLLt7ZDwKINnqCUl5FR0RNg3PQjS5gXEQjvHSeo7W055JZlxinK2HUcaK9w5bh
         eSN5A/+QtNlO1aX10mlD2JbNYLvX64ZhASo914nhKidpwAtpvu4Sta1SN077iSfCpy2t
         CkzOa6S94V0kN8rvcfmrtw6/E3rj5yp0k5AJo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=QhSJpdElfxLJFyuRKCFkIgo8J87kpfyiNf5gNwRrRdk=;
        b=sG1EHq5XhaqoCCAzjQKE03k8IaOZWHzygsn+c1ByYtPExoyXQ6lvA9qdPWPUdhmWIo
         XRGdFSSKoZesm3uCi8GKFptSwt7YAfWL+L4YzZPljSz5CAhFHkT3d7+L0tsHNdbsBM1l
         95e0o+8DC+PQhh5PMkun4t8CuZhaERM6Xk1cpqzG1ApMg0EQ2YlvnrvHeJkLKuCxDC46
         fENUvHvLf9KixDW4RC2HLiiWoraHsnqRhmg4XHfNWVtJPgBBNEqsgLcAvZhH+jeFOOx5
         2S5R1IF0ZGAIly5wzBKngPanBslHYn+LArH+acNUVvsqKgGTLCNNvNDRlpQxIFCj5p73
         ImlA==
X-Gm-Message-State: AJIora+sBhAPCfPVhZJzVrRkYCjcstyCXciqSq/PY1r+9AhNmuImNivp
        Zj1tuBRQHSYlwO3Ev9FoI831Tak4ERCgmBx68Y5Ai3utTrw8zA==
X-Google-Smtp-Source: AGRyM1vft/EQMm1oncXjofFh3jIP3Ex+EX4u97g9AM0PzBmMCHK71dtxNdvf6XCacmM+Xex1pm9BVN9k7B5IjJg8Hv8=
X-Received: by 2002:a25:7801:0:b0:669:b51b:10d0 with SMTP id
 t1-20020a257801000000b00669b51b10d0mr15080419ybc.204.1656671988852; Fri, 01
 Jul 2022 03:39:48 -0700 (PDT)
MIME-Version: 1.0
References: <20220629155956.1138955-1-nfraprado@collabora.com> <20220629155956.1138955-20-nfraprado@collabora.com>
In-Reply-To: <20220629155956.1138955-20-nfraprado@collabora.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Fri, 1 Jul 2022 18:39:37 +0800
Message-ID: <CAGXv+5FEM0UNg5vCK3qF6yzhCPWDryQx0iEzhFJJEQQhpx1M-w@mail.gmail.com>
Subject: Re: [PATCH v4 19/19] arm64: dts: mediatek: asurada: Add SPI NOR flash memory
To:     =?UTF-8?B?TsOtY29sYXMgRi4gUi4gQS4gUHJhZG8=?= 
        <nfraprado@collabora.com>
Cc:     Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>, kernel@collabora.com,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jun 30, 2022 at 12:00 AM N=C3=ADcolas F. R. A. Prado
<nfraprado@collabora.com> wrote:
>
> Add support for the SPI NOR flash memory present on the Asurada
> platform.
>
> Signed-off-by: N=C3=ADcolas F. R. A. Prado <nfraprado@collabora.com>
> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collab=
ora.com>

Tested-by: Chen-Yu Tsai <wenst@chromium.org>
