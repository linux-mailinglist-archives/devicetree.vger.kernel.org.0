Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C41BD7154C1
	for <lists+devicetree@lfdr.de>; Tue, 30 May 2023 07:13:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230015AbjE3FNF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 May 2023 01:13:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36504 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229491AbjE3FND (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 May 2023 01:13:03 -0400
Received: from mail-ot1-x333.google.com (mail-ot1-x333.google.com [IPv6:2607:f8b0:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A17B6E3
        for <devicetree@vger.kernel.org>; Mon, 29 May 2023 22:13:02 -0700 (PDT)
Received: by mail-ot1-x333.google.com with SMTP id 46e09a7af769-6af7e368bb7so1612646a34.1
        for <devicetree@vger.kernel.org>; Mon, 29 May 2023 22:13:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1685423582; x=1688015582;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ik47P3Etu0ZN7dEwfdNxUGGecWtWJVtJjhAgZY4CeRc=;
        b=JrRIgBCXlGKvhc5UxmkVzZIpIZUdXfe367TgIFdXkccrdF2wTkNY6svU+2j5Ba9ozM
         FbkDNuYjyKhSvQYFEaNVtg8OfhZGctKUf0Wys+MbB9TrA3QZP1qQm81eY5UKRCrpIhPO
         xt5Sw+YUMtCnM5AevkG4e4q05bw1dQzxyAmDg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685423582; x=1688015582;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ik47P3Etu0ZN7dEwfdNxUGGecWtWJVtJjhAgZY4CeRc=;
        b=LDAO8weXMxflbDcIUVrdXhbReqjzOFCQHO7tbxrMVz7RhiXlzBxKkU3TV1iX3qut79
         xxlpFIviq6871SOgeoUD+wTB/3CzoMtjwZCb6046eFLFO/+jS8DcRc0vJpXoOOJx5ZFG
         j7FRj83UOWNVH3Ir0owl2cHbrO2oidMdZwxYc8Fr6AW8vzNRKUIMVJomMxCFyKWdSi/b
         RIVv9D+y+hVOahmbpwbxC1149Ufq/YU1U6syNibWWk/kqu5Xy5qKrLsmQealUmV8KivX
         3W8BDPCGhnB+HZTkxlV6r+D1RlKER6luBnGov3Qtt49ysFrGmkllo6mDWuXCdRGA4lqT
         oNsA==
X-Gm-Message-State: AC+VfDxYERkfudnDzE7zgF8oWBJlsOOOjTcy3HIPYZJY8/1ktlTr2Zax
        jq7m0mJ/Uj570ut0NHisIMwocPmM35/JE7WYR70Z0Q==
X-Google-Smtp-Source: ACHHUZ6D3pnibJwrsrNe/P7w8YfHG9D5A4Pr78OnB3gLm1pFudeiYi7fn3Wi3/TlXT8sOlauUIcLPY87SO1MD2I+Mpo=
X-Received: by 2002:a05:6830:204b:b0:6b0:66f5:2817 with SMTP id
 f11-20020a056830204b00b006b066f52817mr518098otp.34.1685423581739; Mon, 29 May
 2023 22:13:01 -0700 (PDT)
MIME-Version: 1.0
References: <20230220093343.3447381-1-hsinyi@chromium.org> <CAGXv+5E4_k1jKTnninYkuT6Tf=skB00AowHpM+hc8j_VFM-RfQ@mail.gmail.com>
In-Reply-To: <CAGXv+5E4_k1jKTnninYkuT6Tf=skB00AowHpM+hc8j_VFM-RfQ@mail.gmail.com>
From:   Hsin-Yi Wang <hsinyi@chromium.org>
Date:   Tue, 30 May 2023 13:12:36 +0800
Message-ID: <CAJMQK-hnK69iVJhqW_8UtKHHLQ3608Cb74Jk_b+xHH0BBu4yVw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: mediatek: mt8183: kukui: Add scp firmware-name
To:     Chen-Yu Tsai <wenst@chromium.org>
Cc:     Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Feb 21, 2023 at 11:25=E2=80=AFAM Chen-Yu Tsai <wenst@chromium.org> =
wrote:
>
> On Mon, Feb 20, 2023 at 5:34 PM Hsin-Yi Wang <hsinyi@chromium.org> wrote:
> >
> > The upstream SCP firmware path is /lib/firmware/mediatek/mt8183/scp.img
> >
> > Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
>
> Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>

hi Matthias,

Kindly ping on the patch, thanks!
