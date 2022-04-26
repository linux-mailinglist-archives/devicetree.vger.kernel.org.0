Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DB3DA510AEB
	for <lists+devicetree@lfdr.de>; Tue, 26 Apr 2022 23:02:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1355278AbiDZVF6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Apr 2022 17:05:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42570 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1355243AbiDZVFx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Apr 2022 17:05:53 -0400
Received: from mail-oo1-xc2b.google.com (mail-oo1-xc2b.google.com [IPv6:2607:f8b0:4864:20::c2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B91A54B403
        for <devicetree@vger.kernel.org>; Tue, 26 Apr 2022 14:02:36 -0700 (PDT)
Received: by mail-oo1-xc2b.google.com with SMTP id m22-20020a056820051600b0033a41079257so18455ooj.4
        for <devicetree@vger.kernel.org>; Tue, 26 Apr 2022 14:02:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=qEtkFZetJ9a17spXA9ebo0ZoaMU6GomnRunLZuYIOzU=;
        b=ejvOCooKk+1oqQfD3u3HSZmGlPCV7W/7UHbOQUFeBT9ekTYMsnuXtulu2IPWAAP6W6
         Ncjxa60Mq+Sw8k16LWMCIzE+jGgAY/4Z8elCvJPiqEEq+saLPXJ43EMVEvN+DaMCJAxY
         8uRRMBpjBXa/7K8PpMQHfgHbxmVg6vxOog1KY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=qEtkFZetJ9a17spXA9ebo0ZoaMU6GomnRunLZuYIOzU=;
        b=wjix12dHk8lTg8hNgDOcSvGfUkx+sxcmT7hHehGShG6Fv9sBCffvxcDiauBbC3BtRV
         1RouuxBk/KkJs265WaVA+VvbDD8KmqiUEhP6a+I83E1JHbXaAaQxLMkgB0/79PwUA8iB
         USdWr6meLwYVJvHgv8gbJ9t4lea9OTm1S38HLYK/s035oXvqYGQLmy4G3GQZn66oYkv+
         yAb85XevOBOPMwB/qJRe2MUPJsXWb0fgYMIsEFIq8UA39VkNwqASogMf9bAJ8Mm8EpYs
         2hLrD6UFANSMgPIdMJkB1M4ZOwCLlU0Foe1IX0gGhG5Hfdo5Fm7CRJbnnMVdkp2ENYpa
         KBVQ==
X-Gm-Message-State: AOAM5313ZOni8xJxN1PJNFj2MSSVGOIB9490Y8peafNF73oXUqa1PTBR
        odgUiFrzAC+kDgmlwaz87R11N73u4LGWt6gppemCiUQM7VU=
X-Google-Smtp-Source: ABdhPJyX2tt94IZxxiwugK18OZhd/mYokzmjPf3b8ISvStP3OxlWQq6CasrPDDXe+J9Il7UXag8gxagXYu8XR+2uZ8Y=
X-Received: by 2002:a4a:6b49:0:b0:329:99cd:4fb8 with SMTP id
 h9-20020a4a6b49000000b0032999cd4fb8mr8908758oof.25.1651006956146; Tue, 26 Apr
 2022 14:02:36 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 26 Apr 2022 14:02:35 -0700
MIME-Version: 1.0
In-Reply-To: <DM8PR02MB81025CD159F1B2158EAE979CF0F49@DM8PR02MB8102.namprd02.prod.outlook.com>
References: <20220202053207.14256-1-tdas@codeaurora.org> <CAE-0n52T9Z+LS3KMVeSBsad=Em3e27J=rEzHTB0WS-b5M=owFQ@mail.gmail.com>
 <DM8PR02MB81025CD159F1B2158EAE979CF0F49@DM8PR02MB8102.namprd02.prod.outlook.com>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Tue, 26 Apr 2022 14:02:35 -0700
Message-ID: <CAE-0n50nsMOqekDqrg+n0A8mP9BVS10DEbMqDSESyHTD4sSQVA@mail.gmail.com>
Subject: RE: [PATCH v3] arm64: dts: qcom: sc7280: Add lpasscore & lpassaudio
 clock controllers
To:     Rob Herring <robh+dt@kernel.org>,
        Taniya Das <quic_tdas@quicinc.com>, bjorn.andersson@linaro.org
Cc:     Douglas Anderson <dianders@chromium.org>,
        Andy Gross <agross@kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-msm@vger.kernel.org" <linux-arm-msm@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Taniya Das <tdas@codeaurora.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Taniya Das (QUIC) (2022-04-21 10:40:28)
>
> [Taniya Das] Sure, I can remove the node which should be the cleaner way.

If the node is removed then the driver should be removed as well? Did
you send a patch to do this?
