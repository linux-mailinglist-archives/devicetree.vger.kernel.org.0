Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 875245F5885
	for <lists+devicetree@lfdr.de>; Wed,  5 Oct 2022 18:44:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230192AbiJEQoN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Oct 2022 12:44:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38104 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230159AbiJEQoL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 Oct 2022 12:44:11 -0400
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CC7C96E8AF
        for <devicetree@vger.kernel.org>; Wed,  5 Oct 2022 09:44:08 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id z23so19952772ejw.12
        for <devicetree@vger.kernel.org>; Wed, 05 Oct 2022 09:44:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=m45nq82Lfg1q6SNEw+KpGC7tj62Q9fUk4yU+5lXbo+o=;
        b=BDVZ2OiPMtg3p8vNbCwNKMoZwzFiI8iqqHYTG/Ma3vjDZNKqDlL6WyURzS7u3yFW0d
         JXjp3AskuTWetb7SNYos+u/fRVWDAT1H6e0bOm+xiCDoWVpifr4i/sQSxJSkh7V/XsCl
         9tKYmGNsotYqjf+XgrdIzHLwKZNs7XE3V9ZWg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=m45nq82Lfg1q6SNEw+KpGC7tj62Q9fUk4yU+5lXbo+o=;
        b=cU8xNC7tbBN76Y5ltZFK5MRJb4SLi0yugEmx/zv3VLOgIisfFDkD0MnhdG9jJqfvnA
         6eIJS6z9HHYZo4SwSP7Kk4a77cBkND7j2bhLhbJzVzR5pTl7UTqraZRNwcMDg0GDk046
         GXkVQsoF4ZA+XEYA0m0NkfIzHM6K/+KZHZmh+r6OqYcnABHd+Li1uDxBLjJ/rAYLnjHv
         guk3xnxawb6A8TWwBnD8SswTdaiYaVDEaUn9wcqdm7RafOhffLy7k9/YRBdJ/Wv4GRTp
         HOeFUPukI6bhRMChOWTelNswjcIo2ofIXaYD7J0dPVnDPs022NbSnRN3zDeXlAPvrtta
         vF8w==
X-Gm-Message-State: ACrzQf2AH4Gsnx6ZgkZdWivseQZFyC9WTYO3+X3Wv+20vCsfz34AF9by
        ixNwjskw9dGM1m0jkYdyDapRLyM8SjTVOAcv
X-Google-Smtp-Source: AMsMyM4oF/MczmVNTYgINtGrID9VpbkNc35ocY2S9ZfjdQsze4qWUqrmMUzeuy/Zv48fmiDOW1Tw1g==
X-Received: by 2002:a17:906:9749:b0:782:287f:d217 with SMTP id o9-20020a170906974900b00782287fd217mr381745ejy.259.1664988246867;
        Wed, 05 Oct 2022 09:44:06 -0700 (PDT)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com. [209.85.128.41])
        by smtp.gmail.com with ESMTPSA id s8-20020a056402164800b00457f86b7e32sm4131208edx.26.2022.10.05.09.44.05
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Oct 2022 09:44:05 -0700 (PDT)
Received: by mail-wm1-f41.google.com with SMTP id bg9-20020a05600c3c8900b003bf249616b0so1188180wmb.3
        for <devicetree@vger.kernel.org>; Wed, 05 Oct 2022 09:44:05 -0700 (PDT)
X-Received: by 2002:a05:600c:500d:b0:3b5:234:d7e9 with SMTP id
 n13-20020a05600c500d00b003b50234d7e9mr295066wmr.57.1664988245013; Wed, 05 Oct
 2022 09:44:05 -0700 (PDT)
MIME-Version: 1.0
References: <20221003102735.39028-1-sheng-liang.pan@quanta.corp-partner.google.com>
 <20221003182637.v6.1.Ide53082044aac56877c4ff5725777769e377476a@changeid>
In-Reply-To: <20221003182637.v6.1.Ide53082044aac56877c4ff5725777769e377476a@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 5 Oct 2022 09:43:53 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Vs5qjOkNS8zjqdJr+8o_h4nArA7s3XwoofrPaOsF6n4g@mail.gmail.com>
Message-ID: <CAD=FV=Vs5qjOkNS8zjqdJr+8o_h4nArA7s3XwoofrPaOsF6n4g@mail.gmail.com>
Subject: Re: [PATCH v6 1/3] dt-bindings: arm: qcom: Separate LTE/WIFI SKU for sc7280-evoker
To:     Sheng-Liang Pan <sheng-liang.pan@quanta.corp-partner.google.com>
Cc:     LKML <linux-kernel@vger.kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Stephen Boyd <sboyd@codeaurora.org>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Mon, Oct 3, 2022 at 3:28 AM Sheng-Liang Pan
<sheng-liang.pan@quanta.corp-partner.google.com> wrote:
>
> evoker will have WIFI/LTE SKU, separate it for each different setting.
>
> Signed-off-by: Sheng-Liang Pan <sheng-liang.pan@quanta.corp-partner.google.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Reviewed-by: Douglas Anderson <dianders@chromium.org>
> ---
>
> (no changes since v5)
>
> Changes in v5:
> - new patch add touchpad and touchscreen for evoker
> - remove unnecessary whitespace
>
> Changes in v4:
> - fix typo in tittle and commit
> - remove change for trackpad and touchscreen

No need to spin for this purpose, but your version history is a bit
confusing here. You should be putting the version history in the patch
that changed. In this case the bindings patch (patch #1) didn't change
in v5 and the trackpad/touchscreen didn't change in v4. Those changes
were in patches #2 and #3.

-Doug
