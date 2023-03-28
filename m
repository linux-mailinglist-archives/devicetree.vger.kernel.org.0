Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6BE2B6CC9CD
	for <lists+devicetree@lfdr.de>; Tue, 28 Mar 2023 19:57:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229849AbjC1R5w (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Mar 2023 13:57:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45498 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229539AbjC1R5v (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Mar 2023 13:57:51 -0400
Received: from mail-yw1-x1134.google.com (mail-yw1-x1134.google.com [IPv6:2607:f8b0:4864:20::1134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 57F67E3B1
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 10:57:39 -0700 (PDT)
Received: by mail-yw1-x1134.google.com with SMTP id 00721157ae682-5416698e889so245158297b3.2
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 10:57:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1680026258;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=M/zyfhrzpJ8FVGDn0nkToOqRRxGr7JvskPxRAJdP0ZQ=;
        b=P9CqKo6uPkNWXhAWUEoQg+RZX5rj9LTR1k9IovpkIcV1Su9jdnYvfSFmWp9liCMBL9
         rAA9SnaN8FfuNHbFD7A7riq5ds8OUm1Q40VhuMz1cjYnj0/35CE8ZROgRBw89QE29qU+
         ix/fUE8SQbk0TWt+16mmg1blmF9MdLSsVc+pM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680026258;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=M/zyfhrzpJ8FVGDn0nkToOqRRxGr7JvskPxRAJdP0ZQ=;
        b=NiYKRBB7jyNXFiijxEbza4T+jqfO0O91vJdfpqIOsCwrMFGVWjTBShah3Fyjac1+QQ
         MY/8MzMt3zlzfS7vWJhwe5bBpa+sGAEcycFT3QGoMDJHxrIlDqHfMmUGp7y5BpJmO5wn
         /6r7u6LJXCiMrJjV7oytNXwGALrd5GuT8NAywfRDXbWQEoB9BCD4mu5FxECCBhiYhGEb
         bCHa+D5Sb3jvq5YAaUwHeV7s7sdvTHnQYZmZT4YbjPOE/Teh34IflSXlxZvx7BZ6csjU
         hc5dVDPn1Vp2IE1fyYll/FV3UptvkGvjde0T+R71ZOqMeVx5rhnh7QAuM8S3bWiPExvC
         ZMAg==
X-Gm-Message-State: AAQBX9fg4Gd/JEipFarrVlWXXJtD0XjsJVUpK1Lv1N91lOUQWioDzLRo
        pj5QWA1XihB2cdZTLAzyzXTfJ57mtH2JmmfdnrYigw==
X-Google-Smtp-Source: AKy350Yku4oTglKVG+wlRh5yaGjA1O9kEXdbcbbYcByQcSsV3pIVqE85+HIV3u7JHgTOgf8+Vj+p17JSLWs+wk9l7q4=
X-Received: by 2002:a81:ae23:0:b0:52e:e095:d840 with SMTP id
 m35-20020a81ae23000000b0052ee095d840mr7886934ywh.0.1680026258625; Tue, 28 Mar
 2023 10:57:38 -0700 (PDT)
MIME-Version: 1.0
References: <20230326204224.80181-1-krzysztof.kozlowski@linaro.org> <20230326204224.80181-2-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230326204224.80181-2-krzysztof.kozlowski@linaro.org>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Tue, 28 Mar 2023 23:27:27 +0530
Message-ID: <CAMty3ZCr9fH7_w2UMZ9mRw1hHfLn7vij+EpGGUJcTtsn_emJRQ@mail.gmail.com>
Subject: Re: [PATCH 2/4] dt-bindings: display: feiyang,fy07024di26a30d:
 document port
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Neil Armstrong <neil.armstrong@linaro.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
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

On Mon, Mar 27, 2023 at 2:12=E2=80=AFAM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> Panels are supposed to have one port (defined in panel-common.yaml
> binding):
>
>   rk3399-rockpro64.dtb: panel@0: 'port' does not match any of the regexes=
: 'pinctrl-[0-9]+'
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---

Reviewed-by: Jagan Teki <jagan@amarulasolutions.com>
