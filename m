Return-Path: <devicetree+bounces-803-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7831A7A327B
	for <lists+devicetree@lfdr.de>; Sat, 16 Sep 2023 22:37:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 96F8F1C208DF
	for <lists+devicetree@lfdr.de>; Sat, 16 Sep 2023 20:37:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D5931C287;
	Sat, 16 Sep 2023 20:37:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D966134DE
	for <devicetree@vger.kernel.org>; Sat, 16 Sep 2023 20:37:53 +0000 (UTC)
X-Greylist: delayed 527 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sat, 16 Sep 2023 13:37:51 PDT
Received: from localhost.localdomain (unknown [78.37.168.140])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 7B3B4CE1;
	Sat, 16 Sep 2023 13:37:51 -0700 (PDT)
Received: by localhost.localdomain (Postfix, from userid 1000)
	id 065BDF2073D; Sat, 16 Sep 2023 23:29:03 +0300 (MSK)
From: Ivan Bornyakov <brnkv.i1@gmail.com>
To: sebastian.fricke@collabora.com
Cc: Ivan Bornyakov <brnkv.i1@gmail.com>,
	bob.beckett@collabora.com,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	festevam@gmail.com,
	hverkuil@xs4all.nl,
	jackson.lee@chipsnmedia.com,
	kernel@collabora.com,
	kernel@pengutronix.de,
	krzysztof.kozlowski+dt@linaro.org,
	linux-arm-kernel@lists.infradead.org,
	linux-imx@nxp.com,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	mchehab@kernel.org,
	nas.chung@chipsnmedia.com,
	nicolas.dufresne@collabora.com,
	p.zabel@pengutronix.de,
	robh+dt@kernel.org,
	s.hauer@pengutronix.de,
	shawnguo@kernel.org
Subject: Re: [PATCH v12 5/7] media: chips-media: wave5: Add the v4l2 layer
Date: Sat, 16 Sep 2023 23:28:15 +0300
Message-ID: <20230916202819.7998-1-brnkv.i1@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230915-wave5_v12_on_media_master-v12-5-92fc66cd685d@collabora.com>
References: 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=4.6 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FORGED_GMAIL_RCVD,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,HK_RANDOM_FROM,NML_ADSP_CUSTOM_MED,
	NO_DNS_FOR_FROM,RCVD_IN_DNSWL_BLOCKED,RCVD_IN_PBL,RCVD_IN_SORBS_DUL,
	RDNS_NONE,SPF_HELO_NONE,SPF_NONE,SPOOFED_FREEMAIL_NO_RDNS autolearn=no
	autolearn_force=no version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi, Sebastian,

On Fri, Sep 15, 2023 at 23:11:34 +0200, Sebastian Fricke wrote:
> From: Nas Chung <nas.chung@chipsnmedia.com>
> 
> Add the decoder and encoder implementing the v4l2
> API. This patch also adds the Makefile and the VIDEO_WAVE_VPU config
> 
> Signed-off-by: Sebastian Fricke <sebastian.fricke@collabora.com>
> Signed-off-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
> Signed-off-by: Robert Beckett <bob.beckett@collabora.com>
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> Signed-off-by: Nas Chung <nas.chung@chipsnmedia.com>

[...]

> diff --git a/drivers/media/platform/chips-media/wave5/wave5-vpu.c b/drivers/media/platform/chips-media/wave5/wave5-vpu.c
> new file mode 100644
> index 000000000000..a13d968f5d04
> --- /dev/null
> +++ b/drivers/media/platform/chips-media/wave5/wave5-vpu.c

[...]

> +static void wave5_vpu_get_interrupt_for_inst(struct vpu_instance *inst, u32 status)
> +{
> +	struct vpu_device *dev = inst->dev;
> +	u32 seq_done;
> +	u32 cmd_done;
> +	int val;
> +
> +	seq_done = wave5_vdi_read_register(dev, W5_RET_SEQ_DONE_INSTANCE_INFO);
> +	cmd_done = wave5_vdi_read_register(dev, W5_RET_QUEUE_CMD_DONE_INST);
> +
> +	if (status & BIT(INT_WAVE5_INIT_SEQ)) {
> +		if (seq_done & BIT(inst->id)) {
> +			seq_done &= ~BIT(inst->id);
> +			wave5_vdi_write_register(dev, W5_RET_SEQ_DONE_INSTANCE_INFO, seq_done);
> +			val = BIT(INT_WAVE5_INIT_SEQ);
> +			kfifo_in(&inst->irq_status, &val, sizeof(int));
> +		}
> +	}
> +	if (status & BIT(INT_WAVE5_ENC_SET_PARAM)) {
> +		if (seq_done & BIT(inst->id)) {
> +			seq_done &= ~BIT(inst->id);
> +			wave5_vdi_write_register(dev, W5_RET_SEQ_DONE_INSTANCE_INFO, seq_done);
> +			val = BIT(INT_WAVE5_ENC_SET_PARAM);
> +			kfifo_in(&inst->irq_status, &val, sizeof(int));
> +		}
> +	}
> +	if (status & BIT(INT_WAVE5_DEC_PIC) ||
> +	    status & BIT(INT_WAVE5_ENC_PIC)) {
> +		if (cmd_done & BIT(inst->id)) {
> +			cmd_done &= ~BIT(inst->id);
> +			wave5_vdi_write_register(dev, W5_RET_QUEUE_CMD_DONE_INST, cmd_done);
> +			val = BIT(INT_WAVE5_DEC_PIC);
> +			kfifo_in(&inst->irq_status, &val, sizeof(int));
> +		}
> +	}
> +}
> +
> +static irqreturn_t wave5_vpu_irq(int irq, void *dev_id)
> +{
> +	struct vpu_device *dev = dev_id;
> +
> +	if (wave5_vdi_read_register(dev, W5_VPU_VPU_INT_STS)) {
> +		struct vpu_instance *inst;
> +		u32 irq_status = wave5_vdi_read_register(dev, W5_VPU_VINT_REASON);
> +
> +		list_for_each_entry(inst, &dev->instances, list) {
> +			wave5_vpu_get_interrupt_for_inst(inst, irq_status);
> +		}
> +
> +		wave5_vdi_write_register(dev, W5_VPU_VINT_REASON_CLR, irq_status);
> +		wave5_vdi_write_register(dev, W5_VPU_VINT_CLEAR, 0x1);
> +
> +		return IRQ_WAKE_THREAD;
> +	}
> +
> +	return IRQ_HANDLED;
> +}
> +
> +static irqreturn_t wave5_vpu_irq_thread(int irq, void *dev_id)
> +{
> +	struct vpu_device *dev = dev_id;
> +	struct vpu_instance *inst;
> +	int irq_status, ret;
> +
> +	list_for_each_entry(inst, &dev->instances, list) {
> +		while (kfifo_len(&inst->irq_status)) {
> +			ret = kfifo_out(&inst->irq_status, &irq_status, sizeof(int));
> +			if (!ret)
> +				break;
> +
> +			if (irq_status == BIT(INT_WAVE5_INIT_SEQ) ||
> +			    irq_status == BIT(INT_WAVE5_ENC_SET_PARAM))
> +				complete(&inst->irq_done);
> +			else /* DEC/ENC_PIC */
> +				inst->ops->finish_process(inst);
> +
> +			wave5_vpu_clear_interrupt(inst, irq_status);
> +		}
> +	}
> +
> +	return IRQ_HANDLED;
> +}

I believe, instead of
wave5_vpu_irq() + wave5_vpu_get_interrupt_for_inst() + wave5_vpu_irq_thread()
you can reduce interrupt handling to only threaded part with something like this:

static irqreturn_t wave5_vpu_irq_thread(int irq, void *dev_id)
{
	u32 irq_status, seq_done, cmd_done;
	struct vpu_device *dev = dev_id;
	struct vpu_instance *inst;

	while (wave5_vdi_read_register(dev, W5_VPU_VPU_INT_STS)) {
		irq_status = wave5_vdi_read_register(dev, W5_VPU_VINT_REASON);
		seq_done = wave5_vdi_read_register(dev, W5_RET_SEQ_DONE_INSTANCE_INFO);
		cmd_done = wave5_vdi_read_register(dev, W5_RET_QUEUE_CMD_DONE_INST);

		list_for_each_entry(inst, &dev->instances, list) {
			if (irq_status & BIT(INT_WAVE5_INIT_SEQ) ||
			    irq_status & BIT(INT_WAVE5_ENC_SET_PARAM)) {
				if (seq_done & BIT(inst->id)) {
					seq_done &= ~BIT(inst->id);
					wave5_vdi_write_register(dev,
								 W5_RET_SEQ_DONE_INSTANCE_INFO,
								 seq_done);
					complete(&inst->irq_done);
				}
			}

			if (status & BIT(INT_WAVE5_DEC_PIC) ||
			    status & BIT(INT_WAVE5_ENC_PIC)) {
				if (cmd_done & BIT(inst->id)) {
					cmd_done &= ~BIT(inst->id);
					wave5_vdi_write_register(dev,
								 W5_RET_QUEUE_CMD_DONE_INST,
								 cmd_done);
					inst->ops->finish_process(inst);
				}
			}

			wave5_vpu_clear_interrupt(inst, irq_status);
		}
			
		wave5_vdi_write_register(dev, W5_VPU_VINT_REASON_CLR, irq_status);
		wave5_vdi_write_register(dev, W5_VPU_VINT_CLEAR, 0x1);
	}

	return IRQ_HANDLED;
}

Is it better?

[...]

> +static int wave5_vpu_probe(struct platform_device *pdev)
> +{
> +	int ret;
> +	struct vpu_device *dev;
> +	const struct wave5_match_data *match_data;
> +	u32 fw_revision;
> +
> +	match_data = device_get_match_data(&pdev->dev);
> +	if (!match_data) {
> +		dev_err(&pdev->dev, "missing device match data\n");
> +		return -EINVAL;
> +	}
> +
> +	/* physical addresses limited to 32 bits */
> +	dma_set_mask(&pdev->dev, DMA_BIT_MASK(32));
> +	dma_set_coherent_mask(&pdev->dev, DMA_BIT_MASK(32));

dma_set_mask_and_coherent()? Also error check?


