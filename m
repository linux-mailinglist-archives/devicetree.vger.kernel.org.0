Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E6BE87051A7
	for <lists+devicetree@lfdr.de>; Tue, 16 May 2023 17:07:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233285AbjEPPHH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 May 2023 11:07:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38884 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234056AbjEPPHA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 May 2023 11:07:00 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 19CBE5FE9
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 08:06:59 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-3062db220a3so9336629f8f.0
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 08:06:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684249617; x=1686841617;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Tq0XF7+PR1y9o2CZoKmF6U/m48kNTTAS4tN4W2zzPWo=;
        b=ha7AFsQELZOGiPCowhQVUhOsNZnSyXCe/j+KcIUVhuXNM0PCgcgaeJoIzfjY7RSwPN
         48+j6+dzld/n3i5Sgzawe3+fdxasZsj3g60SCSfCcbtf7+dxSElVXXDb1Ok0JgezZPKQ
         HxE0wWNVkT/kobzZWmWC+Q6wvgv1BZwkl0ab/+4vCH6CjbAB+6DBBB3sCi+dRoXSAivK
         U+M7nk2jByhvDz5ZEg79265k9LMIeyFKavjcowfXCyWhGe16C3i0cqPx0tTuXbBZZgkP
         hcoYH1Myd149q0vktPY2z8ej5baODQMpBKKcLyErbaXRig377Y44DnEqge4OhyX5glNf
         NQ3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684249617; x=1686841617;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Tq0XF7+PR1y9o2CZoKmF6U/m48kNTTAS4tN4W2zzPWo=;
        b=NEGTWQckDR/RxqFWPAgAc78/ArZ6wwVOTvbj636fRRd/m0wENfzOJ678/dz9drjvnk
         WqV6USV+lhkOVjY4n3etx4eturm7tuSYVuQliijIJZa8aR2hhSbT5yCOPS3/iuFSYMJ5
         iM8Op6ak88/ZLUXDAX0bludTP8loD+8Gp9DbhzxQNa+CrXrsu3fu3oVDSBD3k105q9jN
         4eIgXDMyt1PGhEOAbD+kTYSOoGyV5iZd28RcrQMmkR/56nQSM3EtRVoQAeVrhPeLBAPr
         lIGHDa+vm7dGUVr33LU2NAfHu477zV4aISGwkPHkULbPfeTouIxyeCqpo/vNlST7avOr
         0lCg==
X-Gm-Message-State: AC+VfDyMPieRTIIWWdVwwdHVgra97GFQmTyxwOhZTwxLrTHlE4fzzMJC
        p2Q8fziBp22AQvDplj/sPdtiMy7tfnu40r/jrOse6Q==
X-Google-Smtp-Source: ACHHUZ4LY7SDyh/oGJpKHeooYFL7cLCCmViH03hkaW8zKvIkvlfhWmWvmgx6QJpMdS2kjMk7RGoJQtTUXgX4cRY8bBw=
X-Received: by 2002:a5d:61ce:0:b0:306:30ea:a072 with SMTP id
 q14-20020a5d61ce000000b0030630eaa072mr30132707wrv.53.1684249617400; Tue, 16
 May 2023 08:06:57 -0700 (PDT)
MIME-Version: 1.0
References: <20230502053534.1240553-1-bhupesh.sharma@linaro.org> <ZGOR+hvLMZLxl8fh@matsya>
In-Reply-To: <ZGOR+hvLMZLxl8fh@matsya>
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
Date:   Tue, 16 May 2023 20:36:45 +0530
Message-ID: <CAH=2NtwWxGbkN4Kpb-FrcKP0qD-ZMa56GQ9x-F4yU3RkB6K6tw@mail.gmail.com>
Subject: Re: [PATCH v10 0/4] Enable USB SS qmp phy for Qualcomm SM6115 SoC
To:     Vinod Koul <vkoul@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-phy@lists.infradead.org, agross@kernel.org,
        linux-kernel@vger.kernel.org, andersson@kernel.org,
        bhupesh.linux@gmail.com, krzysztof.kozlowski@linaro.org,
        robh+dt@kernel.org, konrad.dybcio@linaro.org, kishon@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, dmitry.baryshkov@linaro.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 16 May 2023 at 19:53, Vinod Koul <vkoul@kernel.org> wrote:
>
> On 02-05-23, 11:05, Bhupesh Sharma wrote:
>
> >
> > This patchset adds the support for USB SS qmp phy for Qualcomm SM6115
> > SoC. For the previous versions of this patch there were conversations
> > on irc as to whether this was a 'qcom,usb-ssphy-qmp-usb3-or-dp' or a
> > 'qcom,usb-ssphy-qmp-dp-combo' as per downstream code and hardware
> > documentation.
> >
> > But after a careful look at downstream dtsi (see [1]) it appears that
> > this indeed is a 'qcom,usb-ssphy-qmp-usb3-or-dp' phy and not a
> > 'dp-combo' phy.
>
> Fails to apply for me, pls rebase

Sent v11 which is rebased on phy/next (see [1]).

[1]. https://lore.kernel.org/linux-arm-msm/20230516150511.2346357-1-bhupesh.sharma@linaro.org/

Thanks,
Bhupesh
