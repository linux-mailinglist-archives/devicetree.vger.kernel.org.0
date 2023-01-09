Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 099B76626E2
	for <lists+devicetree@lfdr.de>; Mon,  9 Jan 2023 14:23:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237196AbjAINXH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Jan 2023 08:23:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39026 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237270AbjAINWa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 Jan 2023 08:22:30 -0500
Received: from mail-yw1-x112a.google.com (mail-yw1-x112a.google.com [IPv6:2607:f8b0:4864:20::112a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5A0801EED1
        for <devicetree@vger.kernel.org>; Mon,  9 Jan 2023 05:21:59 -0800 (PST)
Received: by mail-yw1-x112a.google.com with SMTP id 00721157ae682-4b6255ce5baso111736747b3.11
        for <devicetree@vger.kernel.org>; Mon, 09 Jan 2023 05:21:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=rz+s0oOK9CGszhUZRgwbVwGCcwnWbJEMw7HwfNcRehg=;
        b=Uhaqe6JtG8smjHRfW6q0YXgFSuMHrQ7FEXbnllZyEQHWvSos4x0efXml1JbfC9AhiG
         zCvcYOJt3ev49tfYsZOoZPaLfhV2lS+f3kcy8uxoM6xKoII7cCfPuRSjpd2BhM6qzs6S
         helwI452iS0FzUQ4lBg3Ao20uZHrBzBF9Xo8sULwwyTyrEUdJbfcnlENqMsIpyg82nRy
         +w8hTC61leJJQsTg9DsSCqhXb5wO+LTvhBY4w7QzkuIPnVSjoO5/wwVy+chy1SJFBG2g
         O5CRfDbUAbKed7SQKJit/g3CMRRuAUYZ8y1gl7ciorubW4JJOPwJTcp25NyBjFvqyoLH
         jpRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rz+s0oOK9CGszhUZRgwbVwGCcwnWbJEMw7HwfNcRehg=;
        b=vJ1Gy65O3T58cN90KVM6WXlfGytzXvE2VPfl+VV1D0WmkP8Sh8Rci7IzhWAL8u7+fH
         WTYUXiHqFiCcG7HVpnF9gXqtjSQbJUTaOz23xGu4SFCX0DzMG5a2wIudO1r8c1/FZQnH
         AMc1g0gWpH6KwB1pANS0255vxOmmmzEb7DswdfVZYXSW5Vxxg+lin41SmFtiP1UNAaPa
         1I/uhyhNevpmePqaKuALJAmUnFi0z37S1bD4kDiM429oVlbhaMxByDf6Q5yXa96ZEXUc
         15lcZTAJIdbnWbtFcDkQDhX6dprEaoqbLkW8J24s0bw4UXbaHT8LIo+aGOJVqP9M9jRW
         /xKA==
X-Gm-Message-State: AFqh2koUCm7DLzBbTAD064E6Wn7GNAXk7uiVQ9a1pZ+Ng8ZqhzTmiRNL
        990KV8kCQCHetun0U3zaNMEZMJFtOoe36l/5fWrnCjA9hJx3WA==
X-Google-Smtp-Source: AMrXdXu1lkDXxVcao7eCMarSE+B3B5cecYgPmEwE1aiQrJEPXeDNzyVa2f9Y6Mleh0SHKD7uD6qnqmE6kOF9fRHTwrg=
X-Received: by 2002:a81:9c52:0:b0:368:e8a:3b1d with SMTP id
 n18-20020a819c52000000b003680e8a3b1dmr865977ywa.469.1673270518295; Mon, 09
 Jan 2023 05:21:58 -0800 (PST)
MIME-Version: 1.0
References: <20221230203637.2539900-1-abel.vesa@linaro.org> <20221230203637.2539900-3-abel.vesa@linaro.org>
In-Reply-To: <20221230203637.2539900-3-abel.vesa@linaro.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 9 Jan 2023 14:21:47 +0100
Message-ID: <CACRpkdbzh6oXhS_qLYHeKvk5cXE7RGS=5XtAzSLcxJ-5D9gJEw@mail.gmail.com>
Subject: Re: [PATCH v4 2/2] pinctrl: qcom: Add SM8550 pinctrl driver
To:     Abel Vesa <abel.vesa@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Dec 30, 2022 at 9:36 PM Abel Vesa <abel.vesa@linaro.org> wrote:

> Add pinctrl driver for TLMM block found in SM8550 SoC.
>
> Co-developed-by: Neil Armstrong <neil.armstrong@linaro.org>
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Patch applied!
Also carried over Bjorns late arrived review-by from v3.

Yours,
Linus Walleij
