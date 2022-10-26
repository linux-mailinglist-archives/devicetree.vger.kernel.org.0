Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 710DD60E98B
	for <lists+devicetree@lfdr.de>; Wed, 26 Oct 2022 21:48:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234094AbiJZTsz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Oct 2022 15:48:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56302 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230142AbiJZTsy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Oct 2022 15:48:54 -0400
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 95001767A
        for <devicetree@vger.kernel.org>; Wed, 26 Oct 2022 12:48:53 -0700 (PDT)
Received: by mail-lj1-x22f.google.com with SMTP id u2so14593925ljl.3
        for <devicetree@vger.kernel.org>; Wed, 26 Oct 2022 12:48:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IcF7nC6qZeFscVULWcDXtlNjrTcWvwqdBFLX1fChCl0=;
        b=EKiJC2wvtyc1pnGNDD0QLOFeRSr1ERfSurDZO3BdCMbQoSuB/yzO/PjN/0+B3pB9SP
         2cNy7mplk1MfulhWHanisX3xPgegT3DlKqsTJ8N84q7J1zSBwzCft3tKfGVNOH7tM7DQ
         EuukqjcPoafyRLO1ci85aJAXy2HtYiv+3lvQo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IcF7nC6qZeFscVULWcDXtlNjrTcWvwqdBFLX1fChCl0=;
        b=HVZmLp7K5BALyIsN7YrxAoskVAGlEDVpSDTW245SKL3zD0DSIixEkv8ZYv9CLUtxrx
         +nn4xxiVLlOEVP0TpNQQVlinAuZ3erKExr1KBUuXWXaa6SAZp9UAADdQH9pkVEA0b+nL
         SzFkQHi13HZlXH2Gbou+IrXm/ijDyrQ5Hntj3hbk7offFJ3YWwP2iZVSlnPqztlnLazJ
         W+/KYPZ6DZLfHrCNQ6x1WgutVKSx9QQ4K8DG+TvYxoDA+IhvlsLxVTBOiBzq5tynYtIk
         jwiKJlO8Mld5aW4EUgUpPl7nnz5wxOEWOqKjDFHBTfCEZ2RNEfdsczoaUcl2OsCUf0CU
         1OOg==
X-Gm-Message-State: ACrzQf2sb8bd/Armogfl16pNmbB5I0fP0H+ZOmhHxZ2RM4Tm3voCFicN
        9s50R9LXZTVfDj3uyYXJPpI7fdvGG4o5NWq/wyCiFw==
X-Google-Smtp-Source: AMsMyM5oma+Er50gNfY2cB0Oq1hTIo8FlcK+IHcNScdvKqWoTxFq43C3FsNqIhwDSfDNdd3EhE3wM1lS6CydgPL3c3E=
X-Received: by 2002:a05:651c:1111:b0:26f:eb56:5844 with SMTP id
 e17-20020a05651c111100b0026feb565844mr17861711ljo.4.1666813731908; Wed, 26
 Oct 2022 12:48:51 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 26 Oct 2022 15:48:51 -0400
MIME-Version: 1.0
In-Reply-To: <20221025164915.1.I38e2545eda2b3bd3fef6b41c98f451e32851ae70@changeid>
References: <20221025164915.1.I38e2545eda2b3bd3fef6b41c98f451e32851ae70@changeid>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Wed, 26 Oct 2022 15:48:51 -0400
Message-ID: <CAE-0n53uR6WrkTXs-tWgd-jpFB8e776hX-Sv+WcZoAY4H9W5AQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: sc7280: Villager doesn't have NVME
To:     Bjorn Andersson <andersson@kernel.org>,
        Douglas Anderson <dianders@chromium.org>
Cc:     Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Douglas Anderson (2022-10-25 16:52:39)
> The sc7280-herobrine-villager derivative doesn't have NVME enabled so
> we shouldn't mark the PCIe nodes as "okay" since they're just for
> boards that have NVME.
>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
