Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 24F37452843
	for <lists+devicetree@lfdr.de>; Tue, 16 Nov 2021 04:10:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347208AbhKPDM4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 Nov 2021 22:12:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54816 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245015AbhKPDMs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 Nov 2021 22:12:48 -0500
Received: from mail-ot1-x336.google.com (mail-ot1-x336.google.com [IPv6:2607:f8b0:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 84F0DC079786
        for <devicetree@vger.kernel.org>; Mon, 15 Nov 2021 15:41:38 -0800 (PST)
Received: by mail-ot1-x336.google.com with SMTP id w6-20020a9d77c6000000b0055e804fa524so30287780otl.3
        for <devicetree@vger.kernel.org>; Mon, 15 Nov 2021 15:41:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=i2SNPRq3pLKtwSNGCAzk+IUcH/Vb3+yYVDf0j3H0K+0=;
        b=mtZZGO4oP1PYAw3s3wv6aw5HRKl8k3hgNW+PQgfljpI1uZ7pU5leGxruNQnn2yiOWK
         Wd83MZ7tXvR2UcrJ9HgImIS4uy7wwJO8TpEGagjQXZruPiVfcnIwvjxApg9eb5GZRx4A
         QsWVwNKNtrG9ZEWrsBPGOiUi/xkmuGjOKbQ40=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=i2SNPRq3pLKtwSNGCAzk+IUcH/Vb3+yYVDf0j3H0K+0=;
        b=4BCix4+cbEsiva2MWP47PxpGoDaSn9axRs8Sb4sqQBqckygwAKtDDs/qj/i+bt23cQ
         tRWsuSbCDkMt2b6zOPHeI6DtcvPREQCucIJSdhz5CQaboOA9ep4ouEhQ/ZRtE/ls9Mje
         7iWYFpVq1T7dc8QLvolaJ5vEqDaq8q4D1c+ktlm/ADo2dthIvsCTn7brEBoU/9H0ObUO
         1cJiS4yytH+4wmgyo/MVGjDGr/C3qrzfBXBasbX8/Eo7uoTPb0Bz8jFmnpIPlkjy8M7t
         wfGwC8rBr3J91rdpPmqRIcqpyQs19nXk9cFfqKzTCpXoORhkUcSB6NKKw9QfCxVqgUwi
         j+yg==
X-Gm-Message-State: AOAM533k6OcNoaXDJ5GGJwmjDkjC5j06mb6H8285yGpGcaimud73RC1C
        KIIBd3kh9edmvWkamIcpYLGDqtLvgSQoLE51TE7l5w==
X-Google-Smtp-Source: ABdhPJyAK5DnGIrjLnccwyQNRehg9V4oQSI/ME20O57PnslENVbYODuBGkNt8nPUL1v6F64p1gdekCaV5kIZ173HdZ4=
X-Received: by 2002:a9d:70ce:: with SMTP id w14mr2393306otj.77.1637019697920;
 Mon, 15 Nov 2021 15:41:37 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 15 Nov 2021 15:41:37 -0800
MIME-Version: 1.0
In-Reply-To: <1635860673-12146-3-git-send-email-pillair@codeaurora.org>
References: <1635860673-12146-1-git-send-email-pillair@codeaurora.org> <1635860673-12146-3-git-send-email-pillair@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Mon, 15 Nov 2021 15:41:37 -0800
Message-ID: <CAE-0n51uTT0KdCdsefTC-z-0bSSST53WKOz98q-YMZyt-6p1og@mail.gmail.com>
Subject: Re: [PATCH v8 2/3] dt-bindings: remoteproc: qcom: Add SC7280 WPSS support
To:     Rakesh Pillai <pillair@codeaurora.org>, agross@kernel.org,
        bjorn.andersson@linaro.org, mathieu.poirier@linaro.org,
        ohad@wizery.com, p.zabel@pengutronix.de, robh+dt@kernel.org
Cc:     linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        sibis@codeaurora.org, mpubbise@codeaurora.org, kuabhs@chromium.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Rakesh Pillai (2021-11-02 06:44:32)
> Add WPSS PIL loading support for SC7280 SoCs.
>
> Signed-off-by: Rakesh Pillai <pillair@codeaurora.org>
> ---

One question

Reviewed-by: Stephen Boyd <swboyd@chromium.org>

>  .../bindings/remoteproc/qcom,sc7280-wpss-pil.yaml  | 217 +++++++++++++++++++++
>  1 file changed, 217 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/remoteproc/qcom,sc7280-wpss-pil.yaml
>
> diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,sc7280-wpss-pil.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,sc7280-wpss-pil.yaml
> new file mode 100644
> index 0000000..eaf7dd1
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/remoteproc/qcom,sc7280-wpss-pil.yaml
> @@ -0,0 +1,217 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/remoteproc/qcom,sc7280-wpss-pil.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm SC7280 WPSS Peripheral Image Loader
> +
> +maintainers:
[...]
> +
> +  glink-edge:
> +    type: object
> +    description: |
> +      Qualcomm G-Link subnode which represents communication edge, channels
> +      and devices related to the ADSP.
> +
> +    properties:
> +      interrupts:
> +        items:
> +          - description: IRQ from WPSS to GLINK
> +
> +      mboxes:
> +        items:
> +          - description: Mailbox for communication between APPS and WPSS
> +
> +      label:
> +        description: The names of the state bits used for SMP2P output
> +        items:
> +          - const: wpss
> +
> +      qcom,remote-pid:
> +        $ref: /schemas/types.yaml#/definitions/uint32
> +        description: ID of the shared memory used by GLINK for communication with WPSS
> +        maxItems: 1
> +
> +    required:
> +      - interrupts
> +      - mboxes
> +      - label
> +      - qcom,remote-pid

Add additionalProperties: false here too?
