Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 82C6D6C6204
	for <lists+devicetree@lfdr.de>; Thu, 23 Mar 2023 09:39:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230274AbjCWIj5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Mar 2023 04:39:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44476 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231273AbjCWIja (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Mar 2023 04:39:30 -0400
Received: from mail-yb1-xb35.google.com (mail-yb1-xb35.google.com [IPv6:2607:f8b0:4864:20::b35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D30F518151
        for <devicetree@vger.kernel.org>; Thu, 23 Mar 2023 01:38:04 -0700 (PDT)
Received: by mail-yb1-xb35.google.com with SMTP id e65so23875677ybh.10
        for <devicetree@vger.kernel.org>; Thu, 23 Mar 2023 01:38:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679560683;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Uq8iULvcx+/Gb+0OFAUtoLewabyi+bElNPlA9W28jjU=;
        b=QE23HGJQHnGAd09QtB+TQS3Q2R0AzQuCJycDS0LJ3CvnhtMzqkExBmjQuj/DUSULwW
         CdTUyRpJfr0BxLeiqJk77HGiEpcXePcfNRVwAuvI4fjDQMcfKVbD5YDefCwoepOjxwZs
         CRKobbEslFR4+47TabRND3zS6BWHhNJQPmXbEQsdpKGm0+ZIf0RjTtSzFo1V0GM4z8iO
         t8YpWg2zcFpkTKc8apwndzQ5TnHNOY/z+enoDLOK1JvEzONxhz0ECaTqBZ98ytvb76mU
         C7s7uOR2SKQANO394Ed6N34I7/1N8dPGan68/QCltgPt0qY65XouFSoJLketbqzkmIx8
         o4BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679560683;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Uq8iULvcx+/Gb+0OFAUtoLewabyi+bElNPlA9W28jjU=;
        b=yr8hZAcfTn3JYcERzOkAmdy+ZAtyfSTliw606UyKGnDTAhquYUrDYz3SGTaRmrTU2p
         ey0rnEJUEhHW7n7SbcHwEPP9CPy7yjy7Z0jzUMS1/ckca/LeFoBXQCxf6Scb1fz05Jmw
         eGCtqWy9kQlnPx0s5Ny0lNiNxFGsGZoSMCzf1hb6KU5wp+Z5jWlgO/wMH5c5wCmSdusU
         ZBGypghhTgBrMuIJrGrQY60tB0Onn8ffVnw/TL94Bn89allKfbloKJjbPkJ+uA6/WX4K
         4n1dD02W7ygna/jP0sTJ8DUYctPsMWfjZHD/WqnfbtpmW7KtfC8RuOWjHe7CymIRsD2p
         oKIA==
X-Gm-Message-State: AAQBX9dN5hE45U5G97EwS3AQfYkzU+7204ohuQwfFE9HnsQlTCQlIFte
        Itkv3pyHrCoQ97c4RYmOyFwg8LgEc/de75nHJfEvBQ==
X-Google-Smtp-Source: AKy350Y1PGIFybckLNdnrmn7B3+z+PO42zpuO3LlrftnXKkUHf5Mxe7g7DsahcR71Hcc5jkg0FrjjJg/mpuCBsLCn1U=
X-Received: by 2002:a05:6902:124a:b0:b74:77fa:581d with SMTP id
 t10-20020a056902124a00b00b7477fa581dmr1459338ybu.4.1679560683403; Thu, 23 Mar
 2023 01:38:03 -0700 (PDT)
MIME-Version: 1.0
References: <20230323012929.10815-1-dipenp@nvidia.com> <20230323012929.10815-10-dipenp@nvidia.com>
In-Reply-To: <20230323012929.10815-10-dipenp@nvidia.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 23 Mar 2023 09:37:52 +0100
Message-ID: <CACRpkda9A-1qKqUPMC=9JKN5uotUmTt2CGQZv5Z91wgrSmwtHw@mail.gmail.com>
Subject: Re: [PATCH V4 09/10] hte: handle nvidia,gpio-controller property
To:     Dipen Patel <dipenp@nvidia.com>
Cc:     thierry.reding@gmail.com, jonathanh@nvidia.com,
        linux-kernel@vger.kernel.org, linux-tegra@vger.kernel.org,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-doc@vger.kernel.org, robh+dt@kernel.org,
        timestamp@lists.linux.dev, krzysztof.kozlowski+dt@linaro.org,
        brgl@bgdev.pl, corbet@lwn.net, gregkh@linuxfoundation.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Mar 23, 2023 at 2:29=E2=80=AFAM Dipen Patel <dipenp@nvidia.com> wro=
te:

> The dt binding adds nvidia,gpio-controller property from Tegra234 SoC
> onwards to simplify code handling gpio chip search. The gpio chip search
> is needed for the AON GPIO GTE instances to map the hardware timestamp
> GPIO request (coming from the GPIO framework) to the tegra HTE
> providers. The patch also adds new gpio chip match function to match
> from the fwnode instead of the gpio controller label. The addition
> of the property does not break ABI for the existing Tegra194 code.
>
> Signed-off-by: Dipen Patel <dipenp@nvidia.com>

Yups just like this!
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
