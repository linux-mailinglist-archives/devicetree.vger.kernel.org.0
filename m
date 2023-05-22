Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3498570BECB
	for <lists+devicetree@lfdr.de>; Mon, 22 May 2023 14:53:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233698AbjEVMxt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 May 2023 08:53:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53636 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233700AbjEVMxr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 May 2023 08:53:47 -0400
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com [IPv6:2607:f8b0:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 262A9C5
        for <devicetree@vger.kernel.org>; Mon, 22 May 2023 05:53:44 -0700 (PDT)
Received: by mail-pg1-x52b.google.com with SMTP id 41be03b00d2f7-52888681eebso164563a12.0
        for <devicetree@vger.kernel.org>; Mon, 22 May 2023 05:53:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684760023; x=1687352023;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7nqbFE0zl6OhqCaZYGP4sDCZVp9m/hk9F5c1BkbaT0Y=;
        b=HgXUrw1FpLNRfMsXpo2k3IbEvxB3ESGqAWx4nwjpcCgjt4tjYTjay5KpWZvhCMycN/
         Sey1lZ06CdNN0u9u9fDA+a8s+qTCKV/KlI/Bm7p8GB18HmfiAHRxLsMVUqE8f+GeO2bj
         3aDhjIcMWYZvu/M+FdigMpTo3gx9xzvAIBCYFTUBGCB+BGeR3RXkpip6q6yOuzKzBA0p
         C5a4L2TJ5uveVZlmd+aYiPhVfq/H2DprOG27kV79XGJNOx8pDOPhiRSrQyI6549/hIQ9
         ez+4l0Ki858Jum1MTGZfZWHOIavw/gcXlD+teekyx1jIhJkgN8ludaQuPirXHkD/Vjxc
         NfgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684760023; x=1687352023;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7nqbFE0zl6OhqCaZYGP4sDCZVp9m/hk9F5c1BkbaT0Y=;
        b=PcOpmnF/EX4koG5MWPDR3ZXvgBOgtUrgBGIOzObmu60FlKmy0EiqeMk8C0L5twB1V0
         QSbJiQlfII85QfHd2ZRzgyVmubuXw81ON9O8mePrF3DntIIhTICCbMeDbR42XmXyY1Yg
         usXEgb2KmWfTRuJ0htUDVEoZ4WBzD+5nggwYJESzcb7VQs1G0AC+409RxZq9fZxoPZbc
         EpYgPpqg6pF7YL5l7a2AGyok7xpuKQsgxjtMgicx9B8qh+wTIqSKTdOzOsnMIXq7RaS3
         hXehnPufIfKQAjajGPjXavAuCp/6dsWmnoVtZkY8dcdPMgWKBdsAFBPHiMnNguS9N2f8
         Nl4Q==
X-Gm-Message-State: AC+VfDxXBLczdE6vIlvUXACkkCXUKWaYDq8fRo+RwDAxhJ0ALzAmRByj
        B/L5qHFfWsQjJPsTq6CFojKrFIiVErUI4M4+icUddBgt
X-Google-Smtp-Source: ACHHUZ5sAJxA+g7SI0XZspfhQNNVMPT09vkzrnxuPOyuY3GKvs3jNxCzXLqXYcgP3BzrkyQ25n9wIIFzMAjrAC0W4nQ=
X-Received: by 2002:a17:90b:4b01:b0:23b:4bce:97de with SMTP id
 lx1-20020a17090b4b0100b0023b4bce97demr12004733pjb.4.1684760023337; Mon, 22
 May 2023 05:53:43 -0700 (PDT)
MIME-Version: 1.0
References: <20230514114625.98372-1-festevam@gmail.com> <a6e549e3-a898-c7b2-1c72-4c6fa2866388@linaro.org>
In-Reply-To: <a6e549e3-a898-c7b2-1c72-4c6fa2866388@linaro.org>
From:   Fabio Estevam <festevam@gmail.com>
Date:   Mon, 22 May 2023 09:53:34 -0300
Message-ID: <CAOMZO5BTAPPs+KsW7+GnBTJf1dLMKuAzZa-HRXtQ+ZTWz+EOxw@mail.gmail.com>
Subject: Re: [PATCH v4 1/2] dt-bindings: samsung,mipi-dsim: Add 'lane-polarities'
To:     neil.armstrong@linaro.org
Cc:     marex@denx.de, dri-devel@lists.freedesktop.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        jagan@amarulasolutions.com, Fabio Estevam <festevam@denx.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Neil,

On Sun, May 14, 2023 at 9:29=E2=80=AFAM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 14/05/2023 13:46, Fabio Estevam wrote:
> > From: Fabio Estevam <festevam@denx.de>
> >
> > The Samsung DSIM IP block allows the inversion of the clock and
> > data lanes.
> >
> > Add an optional property called 'lane-polarities' that describes the
> > polarities of the MIPI DSI clock and data lanes.
>
>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Could you please apply this series?

Thanks
