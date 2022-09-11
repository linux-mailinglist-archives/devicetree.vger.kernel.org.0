Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C0E025B51A5
	for <lists+devicetree@lfdr.de>; Mon, 12 Sep 2022 00:53:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229821AbiIKWwy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 11 Sep 2022 18:52:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36720 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229759AbiIKWwx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 11 Sep 2022 18:52:53 -0400
Received: from mail-oa1-x31.google.com (mail-oa1-x31.google.com [IPv6:2001:4860:4864:20::31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CE1941FCC8
        for <devicetree@vger.kernel.org>; Sun, 11 Sep 2022 15:52:49 -0700 (PDT)
Received: by mail-oa1-x31.google.com with SMTP id 586e51a60fabf-11eab59db71so18955392fac.11
        for <devicetree@vger.kernel.org>; Sun, 11 Sep 2022 15:52:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=to:subject:message-id:date:user-agent:from:references:in-reply-to
         :mime-version:from:to:cc:subject:date;
        bh=H7oMNplR0/sapgbTQ40U0Cn3+sk6O4LcF9QVNpOL2o8=;
        b=QeonR+svMWSQNpzNmzKsc4BKnv5NEK69QL/+ZID84pLU91reE1En30h4IcNE7NpNzD
         ZwnWebzEeccMNnRucE3LOSEm8GvTrBnXQWWoQuAApjGcQOp7riElOaeqMyORYWjCqtRo
         md8OZEHpOflu9aN470LAA58rYHXmT4Bzc8S7Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:user-agent:from:references:in-reply-to
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=H7oMNplR0/sapgbTQ40U0Cn3+sk6O4LcF9QVNpOL2o8=;
        b=G4bSKFTF29LDF9sllwB1KwytC24N8Olm+hO5NreiX2y1JMq/KEd7DTbkwENS17qBDH
         8GdUlYR4jd1/B+7dCleofd2Ic6cK2UPUhiTpgc6TS7GPwOA6ezCFVekPJHrpLxsEMz7X
         M4bWjK/fWx/F75+2rmTKIViSyz9zZmCsapgmXaqYiTFf1IVbj8tUXlQItY4oV4dKTAwT
         snEWt96TdCAA7B9IKv8/ZfDqbN+n1V7V5ntv4z530eRk39LX2frpqocj782PqAKXFSqm
         xAYIxx8p17SnPEYRcvsqu42pzhcWPlHKi5tDqdGru93cwPSeu8LuWz24LAysqcuWw20K
         Cu9A==
X-Gm-Message-State: ACgBeo0azJ2YvoHz1zi9f9kK+cJ8s6Wpii7DVJ1xj7QUvoLMgKsLCahC
        UU51W7aYJ1lDdeUe2ofrhZTfHhohe1cZm2+FbfxmWQ==
X-Google-Smtp-Source: AA6agR4ToSrTBZ3frIF1GrTKC3IhDO8U09cptKWPrbauOJKudE0gO0PvOR+To/mABijoLr6lZVAq4CM+NitMKsxvQUc=
X-Received: by 2002:a05:6870:e748:b0:127:dcb9:c59a with SMTP id
 t8-20020a056870e74800b00127dcb9c59amr9963928oak.0.1662936768620; Sun, 11 Sep
 2022 15:52:48 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Sun, 11 Sep 2022 17:52:48 -0500
MIME-Version: 1.0
In-Reply-To: <1662643422-14909-2-git-send-email-quic_srivasam@quicinc.com>
References: <1662643422-14909-1-git-send-email-quic_srivasam@quicinc.com> <1662643422-14909-2-git-send-email-quic_srivasam@quicinc.com>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Sun, 11 Sep 2022 17:52:48 -0500
Message-ID: <CAE-0n504d-RnwNHBxZsDqEpwotnCUXOiGwuz+C9Gjj01Vz9b6A@mail.gmail.com>
Subject: Re: [PATCH v6 1/8] dt-bindings: remoteproc: qcom: Add SC7280 ADSP support
To:     Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>,
        agross@kernel.org, bgoswami@quicinc.com,
        bjorn.andersson@linaro.org, broonie@kernel.org,
        devicetree@vger.kernel.org, judyhsiao@chromium.org,
        lgirdwood@gmail.com, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        perex@perex.cz, quic_plai@quicinc.com, quic_rohkumar@quicinc.com,
        robh+dt@kernel.org, srinivas.kandagatla@linaro.org, tiwai@suse.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Srinivasa Rao Mandadapu (2022-09-08 06:23:35)
> Add ADSP PIL loading support for SC7280 SoCs.
>
> Signed-off-by: Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
