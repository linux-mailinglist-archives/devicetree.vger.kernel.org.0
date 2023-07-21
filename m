Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E012D75C10E
	for <lists+devicetree@lfdr.de>; Fri, 21 Jul 2023 10:15:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231442AbjGUIPD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Jul 2023 04:15:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58166 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231434AbjGUIPB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Jul 2023 04:15:01 -0400
Received: from mail-vs1-xe2a.google.com (mail-vs1-xe2a.google.com [IPv6:2607:f8b0:4864:20::e2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 137C3272E
        for <devicetree@vger.kernel.org>; Fri, 21 Jul 2023 01:15:00 -0700 (PDT)
Received: by mail-vs1-xe2a.google.com with SMTP id ada2fe7eead31-4468a772490so673311137.3
        for <devicetree@vger.kernel.org>; Fri, 21 Jul 2023 01:15:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1689927299; x=1690532099;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2PU0a9VuD0AqZ7LLCF0XhwtJkP2bxDSGXNRofV50mGY=;
        b=TTXUft0VE9EI+2NHbHh36+FLkJiAXUGzc5JeTg1MRU2/+hAY8Tp+Rde0Xz44B/cVzp
         BdQL3i8ZzqSy5SvzLqCqDEigrbpKpDFcJqH5qVXXQdPnSSuum3aDX48yhAgLbuhooPDr
         NYRKFgdBJEswNg9iKQ0Lw0nCexdyVbBzefEAs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689927299; x=1690532099;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2PU0a9VuD0AqZ7LLCF0XhwtJkP2bxDSGXNRofV50mGY=;
        b=S3Ma/CFA+Tk8kw1SmQ1E+OXD2e3Nd7ndTO84UJTW2lJju/S/7D3cDB8rKHrv8ByzdS
         Tb65ZJdB1ZqVP1aWsoFTHEStfkxKKP19h20X844HrNbcAFSavQ2ls6uI0Ob3NT29QkAE
         joWoor+3k6PzULb72gaOCRfSB7hofD9VL2ebdlZvvctNjE2rw9Uu58w7JhufB0o9SWrA
         mbYBHYHV7oBMicYr/WNjG7FQZ0XV1UsR+Q7+Ie4+dqbnprBUvQBuyXNQRLkg+Auti94Y
         xU25Y4uKYpqEODLOf9pdl3zeTEC8svjfqoOEj4RIvd3bcsYo8rpDaZTRIGPF2hJ/a2f9
         O2/g==
X-Gm-Message-State: ABy/qLa8mNlvhoxSFKWK6TSajSeume2Pz1nuQIJ5OINeDsydbyRwiE2n
        1M8XeKmHABhQblOWFOvv+3zOXX5eyv0l4FOEmVTMxXNQ4amkBSXM
X-Google-Smtp-Source: APBJJlECUvJBjbKPxeyxhugDWCa/+ZcACmwgOgioxcqGIfgnTdRb8nXyKKwshtlfcwhbKhOt4HSOz3rq6GuBw1C9KU8=
X-Received: by 2002:a67:fa4d:0:b0:445:bd3:5b3a with SMTP id
 j13-20020a67fa4d000000b004450bd35b3amr417073vsq.4.1689927299149; Fri, 21 Jul
 2023 01:14:59 -0700 (PDT)
MIME-Version: 1.0
References: <20230721080751.2012318-1-wenst@chromium.org>
In-Reply-To: <20230721080751.2012318-1-wenst@chromium.org>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Fri, 21 Jul 2023 16:14:48 +0800
Message-ID: <CAGXv+5HndYc3eXVBwy=hvsZpTQb-cSgMmDds-Cnjhn0Z461i1g@mail.gmail.com>
Subject: Re: [PATCH v2 0/7] regulator: mt6358: Remove bogus regulators and improvements
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jul 21, 2023 at 4:08=E2=80=AFPM Chen-Yu Tsai <wenst@chromium.org> w=
rote:
>
> Hi,
>
> This is v2 of the remainder of the MT6358 regulator driver cleanup
> and improvement series. v1 can be found here [1].
>
> Changes since v1:
> - Merged patches dropped
> - Added patch to move VCN33 regulator status sync after ID check
> - Added patch to fix VCN33 sync fail error message
> - Added patch to add missing register definitions
>
> Various discrepancies were found while preparing to upstream MT8186
> device trees, which utilize the MT6366 PMIC, that is also covered by
> this driver.
>
> Patch 1 should either go through the mfd tree and an immutable branch
> created for the regulator tree to consume, or given an Ack, merged
> directly through the regulator tree.

Please ignore this thread. I forgot to add Lee to the recipients.
I will resend later.


ChenYu
