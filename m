Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8E52D6C0539
	for <lists+devicetree@lfdr.de>; Sun, 19 Mar 2023 22:06:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230014AbjCSVGo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 19 Mar 2023 17:06:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50142 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229937AbjCSVGn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 19 Mar 2023 17:06:43 -0400
Received: from mail-yb1-xb29.google.com (mail-yb1-xb29.google.com [IPv6:2607:f8b0:4864:20::b29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 828F414993
        for <devicetree@vger.kernel.org>; Sun, 19 Mar 2023 14:06:36 -0700 (PDT)
Received: by mail-yb1-xb29.google.com with SMTP id x198so1155636ybe.9
        for <devicetree@vger.kernel.org>; Sun, 19 Mar 2023 14:06:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679259996;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=144zZiImRVfFBnZW6GKzVJXTL60Wcv553hHE4rrYsuQ=;
        b=msNj49r7LqypPEI0BLP4RQhp10RJ4kLSXcqS2bdjXVPx1HXklwnvfV4jnjJaUl8sct
         1biFSUgNAwZOznfDoQIvaacztlXEzI4VBZMaOyfTtvPwTd1gknE8anR8qIQxnd/L6A7+
         VyK735auqhYLDQ7KVL3butV+7Fo0uRomComCM0x5K543a8EjFbFee5eT2Vk8IQKjhBRx
         BNb7rVea5dLakaadrMwe4KqALUAA/Al8HTu0SUubSHEM3AJVykigGQDLa7eo81F4aaLx
         wF0mSA4O1BVXur3rEe8DrfYoLz70gwloCtXW1EY8JbEZgGUx7Y+KaN8/NL8tnlaBMyfx
         HnUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679259996;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=144zZiImRVfFBnZW6GKzVJXTL60Wcv553hHE4rrYsuQ=;
        b=1ccloo4BTs/Ou2pbRnydIi+TdQMXcLi0RYArZLcVrfMzDQg/qKymVMPV5MV1Noc7jz
         l7P20IqIo5jsN3gE7u+Oh11b4CfRy6fLNtr6M/DZng07nR2nAfl2lbhvw9cGUXCMP+U7
         TQMHm0l2BuaQuHc7FNVAu+SeEdnCMRH5dXNVJJkpAMyxXvqobCgSJCeE4iphncwlcjwA
         5BAeKToDYe3/tTVq8j6YHS4+KiKOH/2rmzXMM66UH+GkS7hGM/n9fkBstu7FwrMwmlbR
         mOT9TgjRmRT46+mK1dGzBisqHP73+LN7tAWJpzXn7XHMXI3dKloZTVj6JQEvrUzEIMcZ
         dsPQ==
X-Gm-Message-State: AO0yUKVbYbvMvo57/1MHBYxMDhU+HAks689aZzJE1KfBvhaPTZtP4ozv
        ad3PxudTxM3F6oT2tFirbKOSvnrWx1bklIMPXkJIAA==
X-Google-Smtp-Source: AK7set86eBleqoMmdM1qKSjYGk83l57PtBMZSwB9gQjU2KxZzli9OcwUY6W2YU/g+N6Hzqg6WiRJsTE9pIe1Zz8fjV0=
X-Received: by 2002:a25:9786:0:b0:b23:4649:7ef3 with SMTP id
 i6-20020a259786000000b00b2346497ef3mr4009486ybo.4.1679259995778; Sun, 19 Mar
 2023 14:06:35 -0700 (PDT)
MIME-Version: 1.0
References: <20230316105800.18751-1-johan+linaro@kernel.org>
In-Reply-To: <20230316105800.18751-1-johan+linaro@kernel.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sun, 19 Mar 2023 22:06:24 +0100
Message-ID: <CACRpkdZizYOjqJMuW+dQ4-Nm6vMLymJHW4WiWhF4jZkES_zc=Q@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: pinctrl: qcom,sc8280xp-tlmm: allow 'bias-bus-hold'
To:     Johan Hovold <johan+linaro@kernel.org>
Cc:     Bjorn Andersson <andersson@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Mar 16, 2023 at 11:57=E2=80=AFAM Johan Hovold <johan+linaro@kernel.=
org> wrote:

> The controller supports 'bias-bus-hold' so add it to the binding.
>
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>

Patch applied!

Yours,
Linus Walleij
